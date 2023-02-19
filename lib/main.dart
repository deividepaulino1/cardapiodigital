import 'package:cardapio/modules/home_page/pages/home_page.dart';
import 'package:cardapio/modules/main_page/main_page.dart';
import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MenuDigi());
}

class MenuDigi extends StatelessWidget {
  const MenuDigi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: DigiColors.themePrimary,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        '/main/': (context) => const MainPage(),
        '/home/': (context) => const HomePage(),
      },
    );
  }
}
