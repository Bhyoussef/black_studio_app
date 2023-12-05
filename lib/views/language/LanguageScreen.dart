import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/SharedPreferences.dart';
import 'package:linkia_ecommerce/views/auth/LoginScreen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/images.png',
              ),
              const SizedBox(height: 30),
              Text(
                'Choose your preferred language',
                style: GoogleFonts.tenorSans(
                    fontSize: 18, fontWeight: FontWeight.w400,color: AppColor.primaryBlackColor),
              ),

              const SizedBox(height: 20),
              Text(
               'اختر لغتك المفضلة',
                style: GoogleFonts.tenorSans(
                    fontSize: 18, fontWeight: FontWeight.w400,color: AppColor.primaryBlackColor),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset(
                'assets/icons/divider.svg',
                height: 12,
                color: AppColor.primaryBlackColor,
              ),
              const SizedBox(height: 20),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.primaryBlackColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      SharedData.saveToStorage('language', 'en', 'string');
                      Get.updateLocale(const Locale('en'));
                      Get.to(() => LoginScreen(), transition: Transition.zoom);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text(
                          'English',
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryBlackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                          Image.asset('assets/icons/ukFlag.png',height: 20,),

                      ],
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColor.primaryBlackColor,
                    onPressed: () async {
                      SharedData.saveToStorage('language', 'ar', 'string');
                      Get.updateLocale(Locale('ar'));
                      Get.to(() => LoginScreen(), transition: Transition.zoom);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/icons/qatarFlag.png',height: 20,),
                        Text(
                          'العربية',
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryWhiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
