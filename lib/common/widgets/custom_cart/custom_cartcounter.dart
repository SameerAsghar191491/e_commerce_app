import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, this.onPressed, required this.iconColor});

  final VoidCallback? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: AppColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
