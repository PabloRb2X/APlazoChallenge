import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:recipes_app/core/navigation/navigation_service.dart';
import 'package:recipes_app/features/main_recipes/data/datasources/meal_data_sources.dart';
import 'package:recipes_app/features/main_recipes/data/repositories/meal_repository_impl.dart';
import 'package:recipes_app/features/main_recipes/domain/usecases/fetch_all_meals.dart';
import 'package:recipes_app/features/main_recipes/presentation/bloc/meal_bloc.dart';
import 'package:recipes_app/features/main_recipes/presentation/pages/meal_page.dart';
import 'package:recipes_app/core/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/dependency_injection/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final client = http.Client();
  final dataSource = MealDataSource(client);
  final repository = MealRepositoryImpl(dataSource);
  final usecase = FetchAllMealsUseCase(repository);
  AppRouter.setupRouter();

  final prefs = await SharedPreferences.getInstance();

  di.init(prefs); // pasa prefs ya resuelto

  runApp(MyApp(usecase));
}

class MyApp extends StatelessWidget {
  final FetchAllMealsUseCase usecase;

  const MyApp(this.usecase, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMealDB Demo',
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: AppRouter.router.generator,
      home: BlocProvider(
        create: (_) => MealBloc(usecase),
        child: const MealPage(),
      ),
    );
  }
}
