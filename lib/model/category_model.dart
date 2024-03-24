import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategory() {
    List<CategoryModel> category = [];

    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate',
          boxColor: Colors.yellow.shade100),
    );

    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate',
          boxColor: Colors.yellow.shade400),
    );

    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate',
          boxColor: Colors.yellow.shade200),
    );
    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate',
          boxColor: Colors.yellow.shade600),
    );

    return category;
  }
}
