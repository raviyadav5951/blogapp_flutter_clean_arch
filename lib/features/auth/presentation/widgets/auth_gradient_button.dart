import 'package:blog_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  const AuthGradientButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [AppPallete.gradient1, AppPallete.gradient2],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(380, 50),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: AppPallete.whiteColor),
        ),
      ),
    );
  }
}
