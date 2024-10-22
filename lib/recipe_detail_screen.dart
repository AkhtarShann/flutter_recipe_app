import 'package:flutter/material.dart';
import 'ingredients_screen.dart';
import 'instructions_screen.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Map<String, String> recipe;
  final int index;

  RecipeDetailScreen({required this.recipe, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Using asset image instead of network image
              Hero(
                tag: 'recipeImage$index',
                child: Image.asset(recipe['image']!),
              ),
              SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IngredientsScreen(ingredients: recipe['ingredients']!),
                    ),
                  );
                },
                child: Text(
                  'Ingredients:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
                ),
              ),
              Text(recipe['ingredients']!),
              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstructionsScreen(instructions: recipe['instructions']!),
                    ),
                  );
                },
                child: Text(
                  'Instructions:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
                ),
              ),
              Text(recipe['instructions']!),
            ],
          ),
        ),
      ),
    );
  }
}
