import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 49,
          height: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: yellow,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(category.icon),
          ),
        ),
        Text(category.title),
      ],
    );
  }
}

class CategoryModel {
  final String title;
  final String icon;

  CategoryModel({required this.title, required this.icon});
}

final categories = [
  CategoryModel(title: 'Snacks', icon: 'assets/icon/Snacks.svg'),
  CategoryModel(title: 'Meal', icon: 'assets/icon/Meals.svg'),
  CategoryModel(title: 'Vegan', icon: 'assets/icon/Vegan.svg'),
  CategoryModel(title: 'Dessert', icon: 'assets/icon/Desserts.svg'),
  CategoryModel(title: 'Drinks', icon: 'assets/icon/Drinks.svg'),
];
