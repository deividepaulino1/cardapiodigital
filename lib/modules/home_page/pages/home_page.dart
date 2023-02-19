// ignore_for_file: library_private_types_in_public_api

import 'package:cardapio/modules/home_page/widgets/carrossel_widget.dart';
import 'package:cardapio/modules/home_page/widgets/categorias_widget.dart';
import 'package:cardapio/modules/home_page/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/custom_colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DigiColors.background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CarrosselSlider(),
            SizedBox(height: 2.h),
            CategoriasWidget(),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 5.w),
              child: Text(
                'Promoções',
                style: TextStyle(
                  color: DigiColors.primary,
                  fontSize: 6.w,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing:
                        0.5.h, // espaçamento vertical entre os cards
                    crossAxisSpacing:
                        4.w, // espaçamento horizontal entre os cards
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
