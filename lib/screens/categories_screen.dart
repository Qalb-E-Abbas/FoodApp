import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal App'),
      ),
      
      body: GridView(
        padding: EdgeInsets.all(25),

        // data from list is being put in a class through map
          children: DUMMY_CATEGORIES.map((catData) => CategoryItem(
            id: catData.id,
            color: catData.color,
            title: catData.title,
          )).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200, //width,
              childAspectRatio: 3/2, // 300 height
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
          )),
    );
  }
}
