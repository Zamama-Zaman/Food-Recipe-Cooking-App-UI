// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe_cooking_app_ui/components/pageview_recipe_list.dart';
import 'package:food_recipe_cooking_app_ui/components/popular_recipe_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.5, vertical: 16),
              child: Row(
                children: [
                  Text(
                    "Recipes",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF0E0E2D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: Icon(
                      Icons.vertical_distribute,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.53),
            PageViewRecipeList(),
            SizedBox(height: 42.52),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  Icon(Icons.access_alarms),
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xfff9ae89),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            PopularRecipeList(),
            // Container(
            //   height: 50,
            //   color: Colors.green,
            // ),
            // SizedBox(height: 16),
            // Container(
            //   height: 50,
            //   color: Colors.green,
            // ),
          ],
        ),
      ),
    );
  }
}
