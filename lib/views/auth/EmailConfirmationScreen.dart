import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'NewPasswordScreen.dart';

class EmailConfirmationScreen extends StatelessWidget {
  const EmailConfirmationScreen({super.key});

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
                const SizedBox(height: 50),
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
                        'assets/icons/sms-tracking.svg', // Replace with your inner image path
                        width: 50, // Adjust the size of the inner image as needed
                      ),
                    ) ],
                ),
                const SizedBox(height: 20),

                SvgPicture.asset(
                  'assets/icons/divider.svg',

                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
                const SizedBox(height: 10),
                Text('CHECK YOUR EMAIL',
                    style: GoogleFonts.tenorSans(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'We have sent a password recovery instruction to your email',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),

                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => const NewPasswordScreen());
                    },
                    child: Text('Open Email',
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
