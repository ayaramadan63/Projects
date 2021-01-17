import 'package:flutter/material.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imagUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({@required this.id,
    @required this.categories,
    @required this.title,
    @required this.imagUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian});
}


Meal m1 = Meal(id: null,
    categories: null,
    title: null,
    imagUrl: null,
    ingredients: null,
    steps: null,
    duration: null,
    complexity: Complexity.Simple,
    affordability: null,
    isGlutenFree: null,
    isLactoseFree: null,
    isVegan: null,
    isVegetarian: null);
