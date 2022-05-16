import 'package:flutter/material.dart';

class Recipe {
  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color? startColor;
  Color? endColor;

  Recipe({
    this.recipeName = '',
    this.recipeImage = '',
    this.recipeMaker = '',
    this.startColor,
    this.endColor,
  });
}

var recipes = [
  Recipe(
    recipeName: 'Vegan Apricot Tart',
    recipeImage: 'img-vegan-apricot-tart.jpeg',
    recipeMaker: 'Foodie Yuki',
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Recipe(
    recipeName: 'Chorizo & mozzarella gnocchi bake',
    recipeImage: 'img-gnocchi.webp',
    recipeMaker: 'Marianne Turne',
    startColor: const Color(0xFF621e14),
    endColor: const Color(0xFFd13b10),
  ),
  Recipe(
    recipeName: 'Easy butter chicken',
    recipeImage: 'img-butter-chicken.webp',
    recipeMaker: 'Jennifer Joyce',
    startColor: const Color(0xFFe18b41),
    endColor: const Color(0xFFc7c73d),
  ),
  Recipe(
    recipeName: 'Easy classic lasagne',
    recipeImage: 'img-classic-lasange.webp',
    recipeMaker: 'Angela Boggiano',
    startColor: const Color(0xFFaf781d),
    endColor: const Color(0xFFd6a651),
  ),
  Recipe(
    recipeName: 'Easy teriyaki chicken',
    recipeImage: 'img-easy-teriyaki.webp',
    recipeMaker: 'Esther Clark',
    startColor: const Color(0xFF9a9d9a),
    endColor: const Color(0xFFb9b2b5),
  ),
  Recipe(
    recipeName: 'Easy chocolate fudge cake',
    recipeImage: 'img-chocolate-fudge-cake.webp',
    recipeMaker: 'Member recipe by misskay',
    startColor: const Color(0xFF2e0f07),
    endColor: const Color(0xFF653424),
  ),
];
