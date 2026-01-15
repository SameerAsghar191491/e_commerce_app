import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// -- Success Gif
            Lottie.asset(
              AppImages.paymentSuccessfulAnimation,
              width: 300,
              height: 300,
              repeat: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            Text(
              "Payment Success!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              "Your item will be shipped soon!",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// -- Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => NavigationMenu()),
                child: Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
