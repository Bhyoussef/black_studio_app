import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => HiddenDrawer(initialIndex: 0));
          },
          icon: const Icon(
            Icons.close,
            color: AppColor.primaryBlackColor,
            size: 30,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.privacyPolicy,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryBlackColor,
              child: Center(
                child: Text(
                  'FREE SHIPPING AND RETURNS',
                  style: GoogleFonts.beVietnamPro(
                    color: AppColor.primaryWhiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              AppLocalizations.of(context)!.privacyPolicy,
              style: GoogleFonts.tenorSans(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            SvgPicture.asset(
              'assets/icons/divider.svg',
              height: 10,
              color: AppColor.primaryBlackColor,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                AppLocalizations.of(context)!.introduction +
                    " " +
                    AppLocalizations.of(context)!.whatWeCollect +
                    " " +
                    AppLocalizations.of(context)!.receivingAndUnsubscribing +
                    " " +
                    AppLocalizations.of(context)!.whoWeShareWith +
                    " " +
                    AppLocalizations.of(context)!.yourRights +
                    " " +
                    AppLocalizations.of(context)!.retentionAndDeletion +
                    " " +
                    AppLocalizations.of(context)!.securityAndLinks +
                    " " +
                    AppLocalizations.of(context)!.changesToPolicy +
                    " " +
                    AppLocalizations.of(context)!.contactingBlackStudio,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                  height: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                AppLocalizations.of(context)!.loremIpsum,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

