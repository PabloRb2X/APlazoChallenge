import '../../../../core/navigation/navigation_service.dart';

abstract class MealsWireframe {
  void openMealDetail(String mealId);
  void openSearchRecipe();
}

class MealsWireframeImpl implements MealsWireframe {
  @override
  void openMealDetail(String mealId) {
    NavigationService.navigateTo('/meal/$mealId');
  }

  @override
  void openSearchRecipe() {
    NavigationService.navigateTo('/searchMeal/');
  }
}
