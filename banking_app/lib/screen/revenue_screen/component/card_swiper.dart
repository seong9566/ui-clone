import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../revenue_screen.dart';
import 'bottom_product_card.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Swiper(
        viewportFraction: 1,
        scale: 0.9,
        duration: 400,
        layout: SwiperLayout.STACK,
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemWidth: MediaQuery.of(context).size.width,
        itemHeight: MediaQuery.of(context).size.height * 0.45,
        itemBuilder: (context, index) => BottomProductCardList(color: colors[index]),
      ),
    );
  }
}
