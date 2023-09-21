import 'dart:math';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomAnimatedGraph extends StatelessWidget {
  CustomAnimatedGraph({
    super.key,
  });

  final List<Color> color = [Colors.yellow, Colors.amber, Colors.red, Colors.orange, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.expand_circle_down_outlined,
                color: Colors.redAccent,
                size: 28,
              ),
              const SizedBox(width: 8),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0.0, end: 2.3),
                duration: const Duration(milliseconds: 600),
                builder: (context, double value, child) => Text(
                  "- ${value.toStringAsFixed(2)}%",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 25),
            duration: const Duration(milliseconds: 600),
            builder: ((context, double value, child) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Sparkline(
                  data: List.generate(60, (index) => sin(index / 5.0) * 10 + 10),
                  max: 1,
                  min: 20,
                  //point
                  pointsMode: PointsMode.atIndex,
                  pointColor: Colors.white,
                  pointSize: 14,
                  pointIndex: value.toInt(),
                  //line design
                  lineWidth: 3,
                  lineColor: Colors.red,
                  lineGradient: LinearGradient(colors: color),
                  useCubicSmoothing: true,
                ))),
          ),
          const SizedBox(height: defaultPadding),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Jan",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Fab",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Mar",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Apr",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "May",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Jun",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Jul",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Aug",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Sep",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
