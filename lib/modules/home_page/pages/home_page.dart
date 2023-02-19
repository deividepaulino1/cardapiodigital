import 'package:cardapio/modules/home_page/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../shared/custom_colors/colors.dart';
import '../widgets/sugestoes_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: DigiColors.background,
        selectedItemColor: DigiColors.primary,
        unselectedItemColor: DigiColors.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
      backgroundColor: DigiColors.background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SugestoesWidget(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'Promoções',
                style: TextStyle(
                  color: DigiColors.primary,
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5, // espaçamento vertical entre os cards
                    crossAxisSpacing:
                        20, // espaçamento horizontal entre os cards
                    childAspectRatio:
                        1, // proporção de largura para altura do card
                  ),
                  itemBuilder: (context, index) {
                    return const ItemCardWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
