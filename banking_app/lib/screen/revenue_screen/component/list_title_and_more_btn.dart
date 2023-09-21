import 'package:flutter/material.dart';

import '../../../constants.dart';

class ListTitleAndMoreBtn extends StatelessWidget {
  const ListTitleAndMoreBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sales Revenue",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
            size: 36,
          )
        ],
      ),
    );
  }
}
