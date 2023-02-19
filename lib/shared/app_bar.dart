import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  int index;
  void Function(int)? onTap;
  CustomBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: DigiColors.primary,
      selectedItemColor: DigiColors.secondary,
      unselectedItemColor: DigiColors.tertiary,
      selectedIconTheme: const IconThemeData(
        color: Colors.orange,
        size: 30,
        opacity: 1,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 25,
        opacity: 1,
      ),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: 'Carrinho',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: widget.index,
      onTap: widget.onTap,
    );
  }
}
