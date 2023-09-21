import 'package:banking_app/model/product.dart';
import 'package:banking_app/screen/component/my_appbar.dart';
import 'package:flutter/material.dart';

import 'component/card_swiper.dart';
import 'component/custom_animated_graph.dart';
import 'component/list_title_and_more_btn.dart';
import 'component/revenue_header.dart';

class RevenueScreen extends StatefulWidget {
  const RevenueScreen({super.key, required this.product});
  final Product product;
  @override
  State<RevenueScreen> createState() => _RevenueScreenState();
}

final List<Color> colors = [Colors.yellowAccent, Colors.lightGreenAccent, Colors.redAccent];

class _RevenueScreenState extends State<RevenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(product: widget.product),
      body: Column(
        children: [
          const RevenueHeader(),
          CustomAnimatedGraph(),
          const SizedBox(height: 16),
          const ListTitleAndMoreBtn(),
          const CardSwiper(),
        ],
      ),
    );
  }
}
