import 'package:flutter/material.dart';

class Product {
  final String number, metrics, week;
  final Color color;
  final String riveIcon;
  final String artboard;
  Product({
    required this.riveIcon,
    required this.color,
    required this.number,
    required this.metrics,
    required this.week,
    required this.artboard,
  });
}

List<Product> productList = [
  Product(
    color: const Color(0xFFABDEE6),
    number: "230K",
    metrics: "Sales",
    week: "Since last week",
    riveIcon: "assets/RiveAssets/little_icons.riv",
    artboard: "SETTINGS",
  ),
  Product(
    color: const Color(0xFFCBAACB),
    number: "8.549K",
    metrics: "Customers",
    week: "Since last week",
    riveIcon: "assets/RiveAssets/little_icons.riv",
    artboard: "SIGNOUT",
  ),
  Product(
    color: const Color(0xFFFFFFB5),
    number: "1.423K",
    metrics: "Products",
    week: "Since last week",
    riveIcon: "assets/RiveAssets/little_icons.riv",
    artboard: "DASHBOARD",
  ),
  Product(
    color: const Color(0xFF97C1A9),
    number: "\$9745",
    metrics: "Revenue",
    week: "Since last week",
    riveIcon: "assets/RiveAssets/little_icons.riv",
    artboard: "RULES",
  ),
];
