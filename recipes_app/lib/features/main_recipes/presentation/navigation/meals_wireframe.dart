import '../../../../core/navigation/navigation_service.dart';

abstract class MealsWireframe {
  void openMealDetail(String mealId);
}

class MealsWireframeImpl implements MealsWireframe {
  @override
  void openMealDetail(String mealId) {
    NavigationService.navigateTo('/meal/$mealId');
  }
}
