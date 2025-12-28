import 'package:e_commerce_app/common/styles/shadow.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [
          ShadowStyle.verticalProductShadow
        ],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: darkMode ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          CircularContainers(
            

          ),
        ],
      ),
    );
  }
}
