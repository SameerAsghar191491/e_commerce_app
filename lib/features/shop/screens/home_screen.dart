import 'package:e_commerce_app/common/widgets/custom_cart/custom_cartcounter.dart';
import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/homescreen_background.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenBackground(child: Column(children: [HomeScreenAppBar()])),
          ],
        ),
      ),
    );
  }
}

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      isLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
              color: AppColors.white,
              fontSizeFactor: 0.8,
            ),
          ),
          Text(
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: AppColors.white,
          onPressed: () {
          },
        ),
      ],
    );
  }
}
