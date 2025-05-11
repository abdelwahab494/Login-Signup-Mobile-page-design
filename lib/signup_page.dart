import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';
import 'package:project1/login_page.dart';
import 'package:project1/widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fName = TextEditingController();
    TextEditingController lName = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     "Sign Up",
      //     style: TextStyle(
      //       fontWeight: FontWeight.w700,
      //       fontSize: 20
      //     ),
      //   ), 
      //   backgroundColor: Colors.white,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 110,),
          Center(
            child: Text(
              "Let’s Get Started!",
              style: GoogleFonts.roboto(
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 3,),
          Center(
            child: Text(
              "Create an account on LOGO to get all features",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  CustomTextField(
                    controller: fName,
                    hint: "First Name", 
                    icon: Icons.person_outline_outlined
                  ),
                  SizedBox(height: 19,),
                  CustomTextField(
                    controller: lName,
                    hint: "Last Name", 
                    icon: Icons.person_outline_outlined
                  ),
                  SizedBox(height: 19,),
                  CustomTextField(
                    controller: username,
                    hint: "User Name", 
                    icon: Icons.person_outline_outlined
                  ),
                  SizedBox(height: 19,),
                  CustomTextField(
                    controller: email,
                    hint: "Email", 
                    icon: Icons.email_outlined
                  ),
                  SizedBox(height: 19,),
                  CustomTextField(
                    controller: password,
                    hint: "Password", 
                    icon: Icons.lock_outlined
                  ),
                  SizedBox(height: 19,),
                  CustomTextField(
                    controller: confPassword,
                    hint: "Confirm Password", 
                    icon: Icons.lock_outlined
                  ),
                  SizedBox(height: 19,),
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
                      "CREATE",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          " Login here",
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
          )
        ],
      ),
    );
  }
}
