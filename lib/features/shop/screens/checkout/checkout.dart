import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/customer_details.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/order_price_details.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/payment_method.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/promo_code_card.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/order_success_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
// ignore: unused_import
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: ElevatedButton(
          onPressed: () => Get.to(() => OrderSuccessScreen()),
          child: Text("Checkout 1615.4\$"),
        ),
      ),
      appBar: CustomAppBar(showBackArrow: true, title: Text("Order Review")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // / -- Product CartItemDetails
              CartItem(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// -- Promo Message
              const PromoCodeCard(),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// -- Order Review Details
              RoundedContainers(
                width: double.infinity,
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// -- Order Price Details
                    const OrderPriceDetails(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    Divider(),

                    const SizedBox(height: AppSizes.spaceBtwItems),

                    /// -- Payment Method
                    const PaymentMethod(),

                    const SizedBox(height: AppSizes.spaceBtwItems),

                    /// -- Customer Details
                    const CustomerDetails(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
