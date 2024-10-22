import 'package:flutter/material.dart';

class IngredientsScreen extends StatelessWidget {
  final String ingredients;

  IngredientsScreen({required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingredients'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          ingredients,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
