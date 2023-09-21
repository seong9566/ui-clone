import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../model/product.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    this.product,
    super.key,
  });
  final Product? product;
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.menu),
      ),
      title: product != null
          ? SizedBox(
              width: 40,
              height: 40,
              child: Hero(
                tag: product!.metrics,
                child: RiveAnimation.asset(
                  product!.riveIcon,
                  artboard: product!.artboard,
                ),
              ),
            )
          : null,
      actions: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("assets/img/hyeon.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
