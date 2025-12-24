import 'package:e_commerce_app/features/shop/screens/widgets/home_searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/homescreen_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/homescreen_background.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenBackground(
              child: Column(
                children: [
                  // AppBar
                  HomeScreenAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // SearchBar
                  HomeScreenSearchBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // Categories List
                  Column(
                    children: [
                      SectionHeading(
                        title: "Popular Categories",
                        onPressed: () {},
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),

                      Container(
                        margin: EdgeInsets.only(left: AppSizes.defaultSpace),
                        // color: Colors.amber,
                        height: 80,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 16,
                          itemBuilder: (_, index) {
                            return CategoriesList();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppSizes.spaceBtwItems,
      ),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image(
                height: 45,
                width: 45,
                image: AssetImage(AppImages.shoeIcon),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems / 2,
          ),
          SizedBox(
            width: 56,
            child: Text(
              "Shoes Category",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.showActionButton = true,
    this.buttonTitle = "View All",
    this.textColor,
    required this.title,
    this.onPressed,
  });

  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.white),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.apply(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
