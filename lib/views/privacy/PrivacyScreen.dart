import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon:const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,),

        ),
        title: Text('Privacy Policy',style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
          fontSize: 20
        )),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryBlackColor,
              child: Center(child: Text('FREE SHIPPING AND RETURNS',style:
              GoogleFonts.beVietnamPro(
                color: AppColor.primaryWhiteColor,fontWeight: FontWeight.w400,
                fontSize: 12
              ),)),
            ),
            const SizedBox(height: 50,),
            Text('PRIVACY POLICY', style: GoogleFonts.tenorSans(
                fontSize: 26, fontWeight: FontWeight.w400)),
            Image.asset(
              'assets/imgs/divider.png',
              width: 150,
              height: 50,
              color: AppColor.primaryBlackColor,
            ),

          ],
        ),
      ),
    );
  }
}
