import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'add_recipe_screen.dart';
import 'recipe_detail_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/add': (context) => AddRecipeScreen(),
      },
    );
  }
}
