import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Login Header with Logo or Title & Subtitle
              const LoginHeader(),

              const SizedBox(height: AppSizes.spaceBtwItems),

              // Login Form with TextFeilds and Buttons
              const LoginForm(),

              // Common FormDivider with Text
              const FormDivider(),

              const SizedBox(height: AppSizes.spaceBtwSections),

              // Common Social Button for Login SignUp Screens
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
