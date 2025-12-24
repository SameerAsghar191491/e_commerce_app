import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackGround = true,
    this.showBorder = true,
  });

  final String text;
  final IconData icon;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: showBackGround
              ? darkMode
                    ? AppColors.dark
                    : AppColors.white
              : Colors.transparent,
          border: showBorder ? Border.all(color: AppColors.white) : null,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.spaceBtwItems),
              child: Icon(
                icon,
                color: darkMode ? AppColors.white : AppColors.darkerGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.spaceBtwItems),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: darkMode ? AppColors.white : AppColors.darkerGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
