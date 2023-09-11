import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/notification/FeedsScreen.dart';
import 'package:linkia_ecommerce/views/notification/OfferScreen.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'ActivityScreen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.notification,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.offAll(() => HiddenDrawer(initialIndex: 0));
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
                  leading: SvgPicture.asset('assets/icons/tag.svg'),
                  title: Text(
                    AppLocalizations.of(context)!.offer,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Get.to(() => const OfferScreen());
                  },
                  trailing: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryRedColor,
                      radius: 10,
                      child: Center(
                        child: Text(
                          '3',
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset('assets/icons/List.svg'),
                  title: Text(
                    AppLocalizations.of(context)!.feeds,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Get.to(() => const FeedScreen());
                  },
                  trailing: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryRedColor,
                      radius: 10,
                      child: Center(
                        child: Text(
                          '2',
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset('assets/icons/Notification.svg'),
                  title: Text(
                    AppLocalizations.of(context)!.activity,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Get.to(() => const ActivityScreen());
                  },
                  trailing: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryRedColor,
                      radius: 10,
                      child: Center(
                        child: Text(
                          '1',
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

