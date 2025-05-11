import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';
import 'package:project1/signup_page.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/logo_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
              children: [
                SizedBox(height: 160),
                Center(child: LogoText()),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Welcome back!",
                    style: GoogleFonts.inter(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Log in to existing LOGO account",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 45 ,),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: username, 
                        hint: "Username", 
                        icon: Icons.person_outline_outlined
                      ),
                      SizedBox(height: 20,),
                      CustomTextField(
                        controller: password, 
                        hint: "Password", 
                        icon: Icons.lock_outlined
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              ),
                            ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        alignment: Alignment.center,
                        width: 199,
                        height: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5,),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(3, 3),
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [
                              AppColors.buttonGradient1,
                              AppColors.buttonGradient2
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          "LOG IN",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Or sign up using ",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/facebookicon.svg"),
                          SizedBox(width: 20,),
                          SvgPicture.asset("assets/images/googleicon.svg"),
                          SizedBox(width: 20,),
                          SvgPicture.asset("assets/images/appleicon.svg"),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignupPage()),
                              );
                            },
                            child: Text(
                              " Sign Up",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                // color: Colors.blue
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        Positioned(
          left: 40,
          child: SvgPicture.asset("assets/images/square2.svg"),
        ),
        Positioned(
          left: -35,
          child: SvgPicture.asset("assets/images/square1.svg"),
        ),
      ],
    );
  }
}
