import 'package:banking_app/screen/home_screen/component/product_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: productList.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.2, //item 의 가로 1, 세로 1 의 비율
            mainAxisSpacing: 40, //수평 Padding
            crossAxisSpacing: 80, //수직 Padding
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              product: productList[index],
            );
          },
        ),
      ),
    );
  }
}
