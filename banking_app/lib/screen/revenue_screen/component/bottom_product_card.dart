import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class BottomProductCardList extends StatelessWidget {
  const BottomProductCardList({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
            productList.length,
            (index) => BottomProductCard(
              product: productList[index],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomProductCard extends StatelessWidget {
  const BottomProductCard({
    required this.product,
    super.key,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: RiveAnimation.asset(
            product.riveIcon,
            artboard: product.artboard,
          ),
        ),
      ),
      title: Container(
        margin: const EdgeInsets.only(bottom: 6),
        child: Text(
          product.metrics,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Text(
        product.week,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        product.number,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
