import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainers(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: EdgeInsets.all(AppSizes.md),
      child: Column(
        children: [
          const BrandCard(showBorder: false),

          // Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandToProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandToProductImageWidget(String image, context) {
  final darkMode = HelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainers(
      height: 100,
      backgroundColor: darkMode ? AppColors.darkGrey : AppColors.light,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.all(AppSizes.md),
      child: Image(image: AssetImage(image), fit: BoxFit.contain),
    ),
  );
}
