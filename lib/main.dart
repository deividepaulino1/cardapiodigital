import 'package:cardapio/modules/home_page/pages/home_page.dart';
import 'package:cardapio/modules/index/index_page.dart';
import 'package:cardapio/modules/index/splash_screen.dart';
import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'modules/cart_page/pages/cart_page.dart';
import 'modules/pedido_page/pages/pedido_page.dart';

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
              home: const IndexPage(),
              routes: {
                '/main/': (context) => const SplashScreen(),
                '/home/': (context) => const HomePage(),
                '/carrinho/': (context) => const CarrinhoPage(),
                '/pedido/': (context) => const PedidosPage(),
              },
            );
          },
        );
      },
    );
  }
}
