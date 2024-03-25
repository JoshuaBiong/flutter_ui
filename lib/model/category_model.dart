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
        boxColor: const Color.fromARGB(255, 100, 207, 125),
      ),
    );

    category.add(
      CategoryModel(
        name: 'Pie',
        iconPath: './assets/icon/pie.svg',
        boxColor: const Color.fromARGB(255, 89, 83, 119),
      ),
    );

    category.add(
      CategoryModel(
        name: 'Bread',
        iconPath: './assets/icon/canai-bread.svg',
        boxColor: const Color.fromARGB(255, 229, 123, 194),
      ),
    );
    category.add(
      CategoryModel(
        name: 'Pancakes',
        iconPath: './assets/icon/honey-pancakes.svg',
        boxColor: const Color.fromARGB(255, 131, 115, 45),
      ),
    );
    category.add(
      CategoryModel(
        name: 'Orange',
        iconPath: './assets/icon/orange-snacks.svg',
        boxColor: const Color.fromARGB(255, 184, 50, 50),
      ),
    );

    return category;
  }
}
