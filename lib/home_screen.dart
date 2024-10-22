import 'package:flutter/material.dart';
import 'recipe_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Spaghetti ',
      'image': 'assets/images/spaghetti.jpeg',  // Use asset image here
      'ingredients': 'Spaghetti, Eggs, Parmesan, Bacon, Pepper',
      'instructions': '1. Boil pasta. 2. Cook bacon...'
    },
    {
      'title': 'Chicken Biryani',
      'image': 'assets/images/download.jpg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'Chicken Karahi',
      'image': 'assets/images/karahi.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'macroni',
      'image': 'assets/images/macroni.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'fruit chat',
      'image': 'assets/images/fruit chat.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'Mix sabzi',
      'image': 'assets/images/mix sabzi.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'Chana chat',
      'image': 'assets/images/chana chat.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    },
    {
      'title': 'Haleem',
      'image': 'assets/images/haleem.jpeg',  // Use asset image here
      'ingredients': 'Chicken, Curry Paste, Coconut Milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic...'
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(recipes[index]['image']!, width: 50, height: 150, fit: BoxFit.cover),
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailScreen(recipe: recipes[index], index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
