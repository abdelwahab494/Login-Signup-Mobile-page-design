import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/login_page.dart';
import 'package:project1/widgets/logo_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 90),
                  LogoText(),
                  SizedBox(height: 450,),
                  Text(
                    "LOREM IPSUM",
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Lorem Ipsum is a dummy text \nused as placeholder",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
        Positioned(
          top: -25,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            "assets/images/splash_image.svg",
            width: 350,
          )
        ),
      ]
    );
  }
}