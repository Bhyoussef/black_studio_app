import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/auth/LoginScreen.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'EmailConfirmationScreen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 24,
              height: 24,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Vector.svg',
                      width: 50,
                      height: 120,
                      color: AppColor.primaryGreyColor,
                    ),
                    Positioned(
                      top: 30, // Adjust the position of the inner image as needed
                      left: 30,
                      child: SvgPicture.asset(
                        'assets/icons/lock.svg', // Replace with your inner image path
                        width: 50, // Adjust the size of the inner image as needed
                      ),
                    ) ],
                ),
                const SizedBox(height: 50),
                Text('FORGET YOUR PASSWORD ?',
                    style: GoogleFonts.tenorSans(
                        fontSize: 17, fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                SizedBox(height: 20),
                SvgPicture.asset(
                  'assets/icons/divider.svg',
                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Enter your registered email below to receive password reset instruction',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  backcolor: AppColor.primaryBlackColor,
                  onPressed: () {
                    Get.to(()=>EmailConfirmationScreen());
                  }, text: 'Send',
                  textcolor: AppColor.primaryBlackColor,
                ),

                const SizedBox(height: 100),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => LoginScreen());
                    },
                    child: Text('Back to login',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
