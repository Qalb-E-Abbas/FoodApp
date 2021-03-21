import 'package:flutter/material.dart';
import 'package:flutter_meal/dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {

  static const routeName = '/meal_details';

  @override
  Widget build(BuildContext context) {

   final mealId = ModalRoute.of(context).settings.arguments as String;

   final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text('${selectedMeal.title}'),),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover ,),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingredients'),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey)
            ),
            height: 100,
            width: 300,
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (ctx, index) => Card(
                child: Text(selectedMeal.ingredients[index]),
              ),
            ),
          )
        ],
      )
    );
  }
}
