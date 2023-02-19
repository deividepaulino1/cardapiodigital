import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/home/');
      },
      child: Scaffold(
        backgroundColor: DigiColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 250,
                child: Image.asset('lib/assets/logotipo-branco.png'),
              ),
              Icon(
                Icons.qr_code_scanner_rounded,
                size: 120,
                color: DigiColors.background,
              ),
              Text(
                'Toque para escanear sua mesa',
                style: TextStyle(
                  color: DigiColors.background,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
