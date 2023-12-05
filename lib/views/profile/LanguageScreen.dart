// Import statements
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/LanguageController.dart'; // Import LanguageController
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageController languageController = Get.find<LanguageController>();

    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          AppLocalizations.of(context)!.switchLanguage,
          style: GoogleFonts.beVietnamPro(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                trailing: Obx(
                      () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    value: languageController.savedLang.value == "EN",
                    onChanged: (value) {
                      if (value == true) {
                        languageController.changeLanguage("EN");
                      }
                    },
                  ),
                ),
                title: Text(
                  AppLocalizations.of(context)!.english,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                onTap: () {
                  languageController.changeLanguage("EN");
                },
              ),
              ListTile(
                trailing: Obx(
                      () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    value: languageController.savedLang.value == "AR",
                    onChanged: (value) {
                      if (value == true) {
                        languageController.changeLanguage("AR");
                      }
                    },
                  ),
                ),
                title: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                onTap: () {
                  languageController.changeLanguage("AR");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



