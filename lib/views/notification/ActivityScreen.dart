import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.activity,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset('assets/icons/activity.svg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      AppLocalizations.of(context)!.transactionTitle,
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.transactionDescription,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dateTime,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset('assets/icons/activity.svg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      AppLocalizations.of(context)!.transactionTitle,
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.transactionDescription,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dateTime,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset('assets/icons/activity.svg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      AppLocalizations.of(context)!.transactionTitle,
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.transactionDescription,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dateTime,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

