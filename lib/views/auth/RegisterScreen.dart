import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/auth/widget/SocialButton.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';

import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                Text('New to the black studio'.toUpperCase(),
                    style: GoogleFonts.tenorSans(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                const SizedBox(height: 20),
               SvgPicture.asset(
                  'assets/icons/divider.svg',

                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Register to speed up the checout process and manage your orders',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show Password',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  textcolor: AppColor.primaryWhiteColor,
                  backcolor: AppColor.primaryBlackColor,
                  text: 'Sign up',
                  onPressed: () {
                    Get.to(()=>MainScreen(initialIndex: 0,));
                  },
                ),
                const SizedBox(height: 10),
                Text('Or',
                    style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                SocialButton(
                  backcolor: Colors.blueAccent,
                  icon: Icons.facebook,
                  text: 'Continue with Facebook',
                  onPressed: () {
                    // Implement Facebook login functionality here
                  }, svgAssetPath: 'assets/icons/bi_facebook.svg',
                ),
                const SizedBox(height: 10),
                SocialButton(
                  backcolor: Colors.red,
                  icon: Icons.email,
                  text: 'Continue with Google',
                  onPressed: () {
                    // Implement Google login functionality here
                  },  svgAssetPath: 'assets/icons/flat-color-icons_google.svg',
                ),
                const SizedBox(height: 10),
                SocialButton(
                  backcolor: Colors.black,
                  icon: Icons.apple,
                  text: 'Continue with Apple',
                  onPressed: () {
                    // Implement Apple login functionality here
                  }, svgAssetPath: 'assets/icons/ant-design_apple-filled.svg',
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Get.to(()=>LoginScreen());
                  },
                  child: Text('Login Existing Account ?',
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




