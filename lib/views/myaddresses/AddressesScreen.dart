import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'AddAddresses.dart';




class AdressesScreen extends StatelessWidget {
  const AdressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,),
          onPressed: () {
           Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text(
          'My Address',
          style: GoogleFonts.beVietnamPro(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: EmptyWidget(),
        ),
      ),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/imgs/Group 1000002688.png'), // Replace with your first image path
            Image.asset('assets/imgs/document-text.png'), // Replace with your second image path
          ],
        ),// Replace 'assets/empty_address_image.png' with your actual image path
        const SizedBox(height: 20),
        Text(
          'My Address',
          style: GoogleFonts.tenorSans(
              fontSize: 26, fontWeight: FontWeight.w400),
        ),
        Image.asset(
          'assets/imgs/divider.png',
          width: 150,
          height: 50,
          color: AppColor.primaryBlackColor,
        ),
        const SizedBox(height: 8),
        Text(
          'Currently, you don\'t have any addresses.',
          style: GoogleFonts.beVietnamPro(
              fontSize: 12, fontWeight: FontWeight.w400,
          color: AppColor.primaryGreyColor),
        ),
        const SizedBox(height: 20),
        CustomButton(
          textcolor: AppColor.primaryWhiteColor,
          backcolor: AppColor.primaryBlackColor,
          onPressed: () {
          Get.to(()=>const AddAddressScreen());
        }, text: 'Add Address',),

      ],
    );
  }
}

