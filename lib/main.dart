import 'package:flutter/material.dart';
import 'package:flutter_meal/screens/meal_details_screen.dart';
import 'file:///D:/NewFlutter/flutter_meal/lib/screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealScreen.routeName : (ctx) => CategoryMealScreen(),
        MealDetailsScreen.routeName : (ctx) => MealDetailsScreen()
      },
    );
  }
}

