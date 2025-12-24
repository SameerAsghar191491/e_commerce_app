import 'package:e_commerce_app/common/widgets/search_bar/custom_searchbar.dart';
import 'package:flutter/material.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSearchBar(text: "Search in Store");
  }
}