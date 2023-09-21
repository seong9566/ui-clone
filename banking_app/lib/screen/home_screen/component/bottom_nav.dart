import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../model/bottom_nav_item.dart';
import '../../../utils/rive_util.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(12), // 안쪽의 여백
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              bottomNavItems.length,
              (index) => SizedBox(
                height: 30,
                width: 30,
                child: GestureDetector(
                  onTap: () {
                    bottomNavItems[index].input!.change(true);
                    Future.delayed(const Duration(seconds: 1), () {
                      bottomNavItems[index].input!.change(false);
                    });
                  },
                  child: RiveAnimation.asset(
                    bottomNavItems[index].img,
                    artboard: bottomNavItems[index].artboard,
                    onInit: (artboard) {
                      StateMachineController controller = RiveUtils.getRiveController(
                        artboard,
                        stateMachineName: bottomNavItems[index].stateMachineName,
                      );

                      if (bottomNavItems[index].artboard == "DASHBOARD") {
                        bottomNavItems[index].input = controller.findSMI("isActive") as SMIBool;
                      } else {
                        bottomNavItems[index].input = controller.findSMI("active") as SMIBool;
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
