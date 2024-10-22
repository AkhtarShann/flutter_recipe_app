import 'package:flutter/material.dart';

class InstructionsScreen extends StatelessWidget {
  final String instructions;

  InstructionsScreen({required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instructions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          instructions,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
