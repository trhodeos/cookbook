import 'package:cookbook/services/recipe_service.dart';


class ServiceProvider {
  static final ServiceProvider _singleton = new ServiceProvider._internal();

  factory ServiceProvider() {
    return _singleton;
  }

  ServiceProvider._internal();

  RecipeService getRecipeService() {
    return new MockRecipeService();
  }
}