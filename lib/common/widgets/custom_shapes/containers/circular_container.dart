import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCircularContainers extends StatelessWidget {
  const AppCircularContainers({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 200,
    this.padding = 0,
    this.backgroundColor = AppColors.white,
    this.child,
  });

  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
