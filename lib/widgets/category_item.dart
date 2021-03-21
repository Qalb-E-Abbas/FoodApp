import 'package:flutter/material.dart';
import 'file:///D:/NewFlutter/flutter_meal/lib/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {

  final String title;
  final String id;
  final Color color;

  CategoryItem({this.title, this.color, this.id});


  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routeName, arguments: {'id' : id , 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
        borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black,

      child: Container(
        padding: EdgeInsets.all(25),
        child: Text(title),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.7),
                  color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
