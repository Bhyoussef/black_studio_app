import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          AppLocalizations.of(context)!.myAddressTitle,
          style: GoogleFonts.beVietnamPro(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
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
            SvgPicture.asset('assets/icons/Vector.svg',color: AppColor.primaryGreyColor,), // Replace with your first image path
            SvgPicture.asset('assets/icons/document-text.svg',height: 60,), // Replace with your second image path
          ],
        ),// Replace 'assets/empty_address_image.png' with your actual image path
        const SizedBox(height: 20),
        Text(
          AppLocalizations.of(context)!.myAddressTitle,
          style: GoogleFonts.tenorSans(
              fontSize: 26, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 20),
        SvgPicture.asset(
          'assets/icons/divider.svg',

          height: 15,
          color: AppColor.primaryBlackColor,
        ),
        const SizedBox(height: 8),
        Text(
          AppLocalizations.of(context)!.currentlyNoAddresses,
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
          }, text: AppLocalizations.of(context)!.addAddressButton,),

      ],
    );
  }
}
