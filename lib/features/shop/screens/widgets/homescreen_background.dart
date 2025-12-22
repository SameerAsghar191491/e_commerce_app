import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreenBackground extends StatelessWidget {
  const HomeScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: AppColors.primary,
      child: Stack(
        children: [
          Positioned(
            top: -150,
            right: -250,
            child: AppCircularContainers(
              backgroundColor: AppColors.white.withValues(alpha: 0.1),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: AppCircularContainers(
              backgroundColor: AppColors.white.withValues(alpha: 0.1),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
