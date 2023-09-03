import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';



class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                const SizedBox(height: 30),
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
                        'assets/icons/unlock.svg', // Replace with your inner image path
                        width: 50, // Adjust the size of the inner image as needed
                      ),
                    ) ],
                ),
                const SizedBox(height: 50),
                Text('CREATE NEW PASSWORD',
                    style: GoogleFonts.tenorSans(
                        fontSize: 26, fontWeight: FontWeight.w400)),
                const SizedBox(height: 30),
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
                  onPressed: () {
                    Get.to(()=>MainScreen());
                  }, text: 'Create',
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
