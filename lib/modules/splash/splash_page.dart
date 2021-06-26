import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          AnimatedCard(
            direction: AnimatedCardDirection.top,
            child: Center(
              child: Image.asset(AppImages.union),
            ),
          ),
          AnimatedCard(
            direction: AnimatedCardDirection.bottom,
            child: Center(
              child: Image.asset(AppImages.logoFull),
            ),
          )
        ],
      ),
    );
  }
}
