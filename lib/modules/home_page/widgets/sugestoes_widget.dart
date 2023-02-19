import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:cardapio/shared/widgets/button.dart';
import 'package:flutter/material.dart';

class SugestoesWidget extends StatefulWidget {
  const SugestoesWidget({super.key});

  @override
  State<SugestoesWidget> createState() => _SugestoesWidgetState();
}

class _SugestoesWidgetState extends State<SugestoesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: DigiColors.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Sugestões',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2022/05/26154451/burguer2.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Destaques',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 250,
                      child: const Text(
                        'Mussum Ipsum, cacilds vidis litro abertis. Não sou faixa preta cumpadi, sou preto inteiris, inteiris.Mauris nec dolor in eros commodo tempor.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 40,
                width: double.maxFinite,
                child: DigiButton(
                  onPressed: () {},
                  child: const Text('Aceitar Sugestão'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
