import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('My App'),
      leading: const Icon(Icons.menu),
      backgroundColor: const Color(0xFF35C8DB),
    ),
    body: const Center(
      child: Text('Hello World', style: TextStyle(fontSize: 24)),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('Button Pressed');
      },
      backgroundColor: const Color(0xFF35C8DB),
      child: const Icon(Icons.heart_broken),
    ),
  ));
  runApp(app);
}
