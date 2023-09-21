import 'package:flutter/material.dart';

import '../../../constants.dart';

class RevenueHeader extends StatelessWidget {
  const RevenueHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Complete",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Revenue This Year",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 4.93),
            duration: const Duration(milliseconds: 600),
            builder: (context, double value, child) => Text(
              "${value.toStringAsFixed(2)}%",
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
