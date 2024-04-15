import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.pink,
  });
}

Container container(String id, String title) {
  return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
    colors: [Colors.purple, Colors.blue],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  )));
}
