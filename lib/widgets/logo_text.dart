import 'package:flutter/material.dart';
import 'package:project1/colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          AppColors.primary,
          AppColors.secondary
        ],
        stops: [0, 1.2],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      ).createShader(Rect.fromLTWH(0, 0, bounds.height, bounds.height)),
      child: Center(
        child: Text(
          "LOGO",
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w400,
            fontFamily: "Prime",
            color: Colors.white
          ),
        ),
      )
    );
  }
}