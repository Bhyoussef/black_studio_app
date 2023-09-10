import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widget/CustomButton.dart';

class ChangePasswordScreen extends StatelessWidget {
   ChangePasswordScreen({Key? key}) : super(key: key);

  final TextEditingController _currentPasswordController = TextEditingController();

  final TextEditingController _newPasswordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.changePasswordTitle,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _currentPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.currentPasswordLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.newPasswordLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.confirmPasswordLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              backcolor: AppColor.primaryBlackColor,
              onPressed: () {

              // TODO: Implement the logic for updating the password

            }, text: AppLocalizations.of(context)!.updatePasswordButton,
              textcolor: AppColor.primaryBlackColor,

            ),
          ],
        ),
      ),
    );
  }
}
