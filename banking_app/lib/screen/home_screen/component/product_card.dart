import 'package:banking_app/model/product.dart';
import 'package:banking_app/screen/revenue_screen/revenue_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (product.metrics == "Revenue") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 400),
              reverseTransitionDuration: const Duration(milliseconds: 400),
              pageBuilder: ((context, animation, secondaryAnimation) => FadeTransition(
                    opacity: animation,
                    child: RevenueScreen(
                      product: product,
                    ),
                  )),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(80),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            top: 24,
            right: 0,
            bottom: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Hero(
                    tag: product.metrics,
                    child: RiveAnimation.asset(
                      product.riveIcon,
                      artboard: product.artboard,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product.number,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 6),
              Text(
                product.metrics,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
