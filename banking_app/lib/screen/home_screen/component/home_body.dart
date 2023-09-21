import 'package:banking_app/screen/home_screen/component/product_grid_view.dart';
import 'package:banking_app/screen/home_screen/component/search_form.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeHeader(),
        SizedBox(height: 24),
        SearchForm(),
        SizedBox(height: 24),
        ProductGridView(),
      ],
    );
  }
}
