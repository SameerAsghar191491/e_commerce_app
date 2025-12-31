import 'package:e_commerce_app/common/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/app_bar/tab_bar.dart';
import 'package:e_commerce_app/common/widgets/custom_cart/custom_cartcounter.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/common/widgets/products/card/brand_card.dart';
import 'package:e_commerce_app/common/widgets/search_bar/custom_searchbar.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: HelperFunctions.isDarkMode(context)
                    ? AppColors.black
                    : AppColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: const EdgeInsetsGeometry.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      const CustomSearchBar(
                        padding: EdgeInsets.zero,
                        text: "Search In Store",
                        showBorder: true,
                        showBackGround: true,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      /// -- Featured Brands
                      SectionHeading(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                      GridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return BrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                /// -- TabBar
                bottom: CustomTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.all(AppSizes.defaultSpace),
                child: Column(
                  children: [
                    // -- Brands
                    RoundedContainers(
                      showBorder: true,
                      borderColor: AppColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: const EdgeInsets.only(
                        bottom: AppSizes.spaceBtwItems,
                      ),
                      child: Column(
                        children: [const BrandCard(showBorder: false)],
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
