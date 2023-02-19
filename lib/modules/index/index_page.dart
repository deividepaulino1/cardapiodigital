// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cardapio/modules/cart_page/pages/cart_page.dart';
import 'package:cardapio/modules/home_page/pages/home_page.dart';
import 'package:cardapio/shared/app_bar.dart';
import 'package:flutter/material.dart';

import '../pedido_page/pages/pedido_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

int _selectedIndex = 2;

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const CarrinhoPage(),
      const HomePage(),
      const PedidosPage(),
    ];

    void _onItemTapped(int index) {
      switch (index) {
        case 0:
          setState(() {
            _selectedIndex = 0;
          });
          break;
        case 1:
          setState(() {
            _selectedIndex = 1;
          });
          break;
        case 2:
          setState(() {
            _selectedIndex = 2;
          });
          break;
      }
    }

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: pages[_selectedIndex],
    );
  }
}
