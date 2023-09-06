import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/auth/widget/SocialButton.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'ForgetPasswordScreen.dart';
import 'RegisterScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Image.asset(
              'assets/icons/Rectangle 6603.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 75,
            height: MediaQuery.of(context).size.height * 0.010,
            left: 30,
            right: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10,),
                  topRight: Radius.circular(10),),
                color: AppColor.primaryBlackColor.withOpacity(0.2),
              ),
              width: MediaQuery.of(context).size.width * 0.5,

            ),
          ),
          Positioned(
            top: -110,
            left: 16,
            right: 16,
            child:  SafeArea(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColor.primaryGreyColor,
                              width: .2,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 12,
                            foregroundColor: Colors.black,
                            child: Icon(
                              Icons.close,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'HAVE AN ACCOUNT',
                      style: GoogleFonts.tenorSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    SvgPicture.asset(
                      'assets/icons/divider.svg',
                      height: 10,
                      color: AppColor.primaryBlackColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Sign in to speed up the checkout process and manage your orders',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 15,
                          color: AppColor.primaryGreyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: GoogleFonts.beVietnamPro(
                          fontSize: 15,
                          color: AppColor.primaryGreyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.beVietnamPro(
                          fontSize: 15,
                          color: AppColor.primaryGreyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Get.to(() => ForgetPasswordScreen());
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      textcolor: AppColor.primaryWhiteColor,
                      backcolor: AppColor.primaryBlackColor,
                      onPressed: () {
                        Get.to(() => HiddenDrawer(initialIndex: 0,));
                      },
                      text: 'Sign In',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'OR',
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    SocialButton(
                      backcolor: Colors.blueAccent,
                      icon: Icons.facebook,
                      text: 'Continue with Facebook',
                      onPressed: () {
                        // Implement Facebook login functionality here
                      },
                      svgAssetPath: 'assets/icons/bi_facebook.svg',
                    ),
                    SizedBox(height: 10),
                    SocialButton(
                      backcolor: Colors.red,
                      icon: Icons.email,
                      text: 'Continue with Google',
                      onPressed: () {
                        // Implement Google login functionality here
                      },
                      svgAssetPath: 'assets/icons/flat-color-icons_google.svg',
                    ),
                    SizedBox(height: 10),
                    SocialButton(
                      icon: Icons.apple,
                      text: 'Continue with Apple',
                      onPressed: () {
                        // Implement Apple login functionality here
                      },
                      svgAssetPath: 'assets/icons/ant-design_apple-filled.svg',
                      backcolor: Colors.black,
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Get.to(() => RegisterScreen());
                      },
                      child: Text(
                        'Create New Account ?',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
