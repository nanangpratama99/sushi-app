import 'package:flutter/material.dart';

class MenuDrawerModel {
  String text;
  IconData icon;

  MenuDrawerModel({required this.text, required this.icon});
}

List<MenuDrawerModel> menuData = [
  MenuDrawerModel(text: 'Home', icon: Icons.home),
  MenuDrawerModel(text: 'Cart', icon: Icons.shopping_bag),
  MenuDrawerModel(text: 'Payment', icon: Icons.payment),
  MenuDrawerModel(text: 'Setting', icon: Icons.settings),
];
