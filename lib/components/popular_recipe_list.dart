// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe_cooking_app_ui/models/recipe.dart';

class PopularRecipeList extends StatelessWidget {
  const PopularRecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 98,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 53.43,
                        width: 73,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          // image: DecorationImage(
                          // fit: BoxFit.cover,
                          //   image: AssetImage("assets/image/${recipes[index].recipeImage}"),
                          // ),
                        ),
                      ),
                      SizedBox(width: 18.56),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              recipes[index].recipeName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${recipes[index].recipeMaker} 's recipe",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        recipes[index].recipeMaker[0],
                        style: TextStyle(
                          color: recipes[index].startColor,
                        ),
                      ),
                      backgroundColor: recipes[index].endColor,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.ac_unit),
                        SizedBox(width: 7.65),
                        Icon(Icons.access_alarm),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
