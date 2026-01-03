import 'package:e_commerce_app/common/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsetsGeometry.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // -- Brands
              const BrandShowCase(
                images: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1,
                ],
              ),
              const BrandShowCase(
                images: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1,
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              // -- Products
              SectionHeading(title: "You Might Like", onPressed: () {}),
              const SizedBox(height: AppSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
