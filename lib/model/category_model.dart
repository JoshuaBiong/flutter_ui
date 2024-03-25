import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

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
          iconPath: './assets/icon/plate.svg',
          boxColor: Colors.yellow.shade100),
    );

    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/pie.svg',
          boxColor: Colors.yellow.shade400),
    );

    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate.svg',
          boxColor: Colors.yellow.shade200),
    );
    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate.svg',
          boxColor: const Color.fromARGB(255, 131, 115, 45)),
    );
    category.add(
      CategoryModel(
          name: 'Salad',
          iconPath: './assets/icon/plate.svg',
          boxColor: Colors.yellow.shade600),
    );

    return category;
  }
}
