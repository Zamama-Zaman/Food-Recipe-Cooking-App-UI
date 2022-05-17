// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe_cooking_app_ui/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    this.active,
    this.index,
    this.recipe,
  }) : super(key: key);

  final bool? active;
  final int? index;
  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: recipe!.startColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          ),
        ],
        // image: DecorationImage(
        // fit : BoxFit.cover
        //   image: AssetImage()
        // ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(
                colors: [
                  recipe!.startColor!,
                  recipe!.endColor!.withOpacity(.3),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                tileMode: TileMode.clamp,
                stops: [.3, .6],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                right: 16,
                top: 10,
              ),
              height: 87,
              decoration: BoxDecoration(
                color: recipe!.startColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Text(
                recipe!.recipeName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 84.75,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.5,
                      vertical: 5,
                    ),
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Recipe",
                      style: TextStyle(
                        fontSize: 13,
                        color: recipe!.startColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.65),
                      Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
