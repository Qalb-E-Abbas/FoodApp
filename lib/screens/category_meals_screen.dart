import 'package:flutter/material.dart';
import 'package:flutter_meal/dummy_data.dart';
import 'package:flutter_meal/widgets/meal_item.dart';

class  CategoryMealScreen extends StatelessWidget {


  static const routeName = '/category-meal';

  // final String categoryId;
  // final String categoryTitle;
  //
  // CategoryMealScreen({this.categoryId, this.categoryTitle});

  @override
  Widget build(BuildContext context) {

    // because now we are using routes, so getting arguments from category item screen

    final routesArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];



    // finding meal based on category id, and converting list as well so that we can use it in ListView

    final categoryMeals = DUMMY_MEALS.where((meal){
      return  meal.categories.contains(categoryId);
    }).toList();



    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index){
              return MealItem(
                id: categoryMeals[index].id,
                  title: categoryMeals[index].title,
                  imageUrl: categoryMeals[index].imageUrl,
                  duration: categoryMeals[index].duration,
                  affordability: categoryMeals[index].affordability,
                  complexity: categoryMeals[index].complexity);
          }
          )
    );
  }
}
