import 'package:cardapio/modules/home_page/pages/home_page.dart';
import 'package:cardapio/modules/main_page/main_page.dart';
import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MenuDigi());
}

class MenuDigi extends StatelessWidget {
  const MenuDigi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Sizer(
          builder: (context, orientation, deviceType) {
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
          },
        );
      },
    );
  }
}
