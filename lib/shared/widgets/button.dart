import 'package:cardapio/shared/custom_colors/colors.dart';
import 'package:flutter/material.dart';

class DigiButton extends ElevatedButton {
  DigiButton({
    Key? key,
    required VoidCallback onPressed,
    required Widget child,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: child,
          style: ElevatedButton.styleFrom(
            backgroundColor: DigiColors.secondary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
}
