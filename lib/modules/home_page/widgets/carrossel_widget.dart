import 'package:cardapio/modules/home_page/widgets/sugestoes_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarrosselSlider extends StatefulWidget {
  const CarrosselSlider({Key? key});

  @override
  State<CarrosselSlider> createState() => _CarrosselSliderState();
}

class _CarrosselSliderState extends State<CarrosselSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        // Lista de widgets a serem exibidos no carrossel
        SugestoesWidget(),
        SugestoesWidget(),
        SugestoesWidget(),
      ],
      options: CarouselOptions(
        // Configurações do carrossel
        height: 44.3.h, // Altura do carrossel
        autoPlay: true, // Reproduz automaticamente os itens
        aspectRatio: 16 / 9, // Relação de aspecto dos itens
        enlargeCenterPage: true, // O item central é ampliado
        viewportFraction: 0.95, // Porcentagem de largura dos itens
        initialPage: 0, // Índice do item inicial
        pauseAutoPlayOnTouch: true, // Pausa a reprodução ao tocar
        autoPlayInterval:
            const Duration(seconds: 5), // Intervalo entre os itens
      ),
    );
  }
}
