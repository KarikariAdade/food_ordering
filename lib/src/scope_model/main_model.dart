import 'package:food_ordering/src/scope_model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';

// Adding food model as a mixin requires you to add a set of parameters to the analysis_options.yaml file
class MainModel extends Model with FoodModel{ // Use FoodModel as a mixin class
  // The with will enable it to use all methods in FoodsModel
}