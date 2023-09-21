import 'package:rive/rive.dart';

class BottomNavItem {
  final String img;
  final String artboard;
  final String stateMachineName;

  late SMIBool? input;

  BottomNavItem({
    required this.img,
    required this.artboard,
    required this.stateMachineName,
    this.input,
  });

  set setInput(SMIBool status) {
    input = status;
  }
}

List<BottomNavItem> bottomNavItems = [
  BottomNavItem(
    img: "assets/RiveAssets/icons.riv",
    artboard: "HOME",
    stateMachineName: "HOME_interactivity",
  ),
  BottomNavItem(
    img: "assets/RiveAssets/little_icons.riv",
    artboard: "DASHBOARD",
    stateMachineName: "State Machine 1",
  ),
  BottomNavItem(
    img: "assets/RiveAssets/little_icons.riv",
    artboard: "CHAT",
    stateMachineName: "CHAT_Interactivity",
  ),
  BottomNavItem(
    img: "assets/RiveAssets/little_icons.riv",
    artboard: "USER",
    stateMachineName: "USER_Interactivity",
  ),
];
