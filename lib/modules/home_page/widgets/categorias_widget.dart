import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoriasWidget extends StatefulWidget {
  const CategoriasWidget({super.key});

  @override
  State<CategoriasWidget> createState() => _CategoriasWidgetState();
}

class _CategoriasWidgetState extends State<CategoriasWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Padding(
          padding: EdgeInsets.all(3.sp),
          child: GestureDetector(
            onTap: () {},
            child: Card(
              color: DigiColors.primary.withOpacity(0.9),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.fastfood,
                        color: DigiColors.tertiary,
                      ),
                      Text(
                        'Categoria $index',
                        style: TextStyle(color: DigiColors.tertiary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
