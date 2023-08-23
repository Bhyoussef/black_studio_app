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
        }, icon:const Icon(Icons.close,color: AppColor.primaryBlackColor,size: 30,),

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Text(style: GoogleFonts.beVietnamPro(
                  fontSize: 15, fontWeight: FontWeight.w400,color: AppColor.primaryBlackColor),"Introduction What Personal Information We Collect And How We Use It Receiving And Unsubscribing From The Black Studio Updates Who We Share Your Personal Information With Your Rights In Relation To Your Personal Information Retention And Deletion Of Personal Information Security And Third Party Links In-Application Virtual Activation Changes To This Privacy Policy Contacting The Black Studio"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(style: GoogleFonts.beVietnamPro(
                  fontSize: 15, fontWeight: FontWeight.w400,color: AppColor.primaryBlackColor),'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ultrices elit a, magna magna pretium quam ac leo. Dui praesent consectetur vestibulum est. Quis facilisis netus odio ultricies netus urna tortor, venenatis. Tristique quis arcu bibendum gravida sem libero at sit. Adipiscing non est duis mi arcu, eget pharetra, accumsan. Egestas tincidunt ullamcorper arcu.'),
            )

          ],
        ),
      ),
    );
  }
}
