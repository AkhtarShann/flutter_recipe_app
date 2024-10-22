import 'package:flutter/material.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String ingredients = '';
  String instructions = '';
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Recipe Title'),
                onSaved: (value) {
                  title = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image URL'),
                onSaved: (value) {
                  imageUrl = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ingredients'),
                onSaved: (value) {
                  ingredients = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Instructions'),
                onSaved: (value) {
                  instructions = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Here, you would typically add the recipe to a data source.
                    Navigator.pop(context);
                  }
                },
                child: Text('Add Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
