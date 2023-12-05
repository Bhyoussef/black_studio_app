import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/auth/ChangePasswordScreen.dart';
import 'package:linkia_ecommerce/views/myaddresses/AddressesScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationSettingScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'LanguageScreen.dart';
import 'ProfileEditScreen.dart';

class ProfileScreen extends StatefulWidget {
  final bool? isHome;
   ProfileScreen({Key? key, this.isHome}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isArabicLanguage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.accountTitle.toUpperCase(),
              style: GoogleFonts.tenorSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: SvgPicture.asset('assets/menu/User.svg',
                  height: 25, width: 25, color: AppColor.primaryBlackColor),
              title: Text(
                AppLocalizations.of(context)!.editProfile,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {
                Get.to(() => ProfileScreenEdit());
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/menu/LockSimple.svg',
                  height: 25, width: 25, color: AppColor.primaryBlackColor),
              title: Text(
                AppLocalizations.of(context)!.changePassword,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {
                Get.to(() => ChangePasswordScreen());
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/menu/BellSimpleRinging.svg',
                  height: 25, width: 25, color: AppColor.primaryBlackColor),
              title: Text(
                AppLocalizations.of(context)!.pushNotifications,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {
                Get.to(() => NotificationSetting());
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/menu/MapPin.svg',
                  height: 25, width: 25, color: AppColor.primaryBlackColor),
              title: Text(
                AppLocalizations.of(context)!.myAddress,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {
                Get.to(() => AdressesScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.language_rounded,
                 size: 25,color: Colors.black45,),
              title: Text(
                AppLocalizations.of(context)!.switchLanguage,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {
                Get.to(() => LanguageScreen());
              },
            ),
            const SizedBox(height: 32),
            Text( AppLocalizations.of(context)!.preferencesTitle.toUpperCase(),
                style: GoogleFonts.tenorSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor)),
            const SizedBox(height: 16),
            ListTile(
              trailing: Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.black,
                value: true, // Replace with the actual value for the checkbox
                onChanged: (value) {
                  // TODO: Implement the logic for handling the checkbox change
                },
              ),
              title: Text(
                AppLocalizations.of(context)!.keepHistorySaved,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              onTap: () {
                // TODO: Implement the logic for keeping history saved
              },
            ),
            ListTile(
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/menu/Trash.svg',
                    height: 25, width: 25, color: Colors.red),
              ),
              title: Text(
                  AppLocalizations.of(context)!.clearSavedData,
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              onTap: () {
                // TODO: Implement the logic for clearing saved data
              },
            ),

          /*  ListTile(
              title: Text(
                AppLocalizations.of(context)!.switchLanguage,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              trailing: Switch(
                value: isArabicLanguage,
                onChanged: (value) {
                  setState(() {
                    isArabicLanguage = value;
                    // Add logic to change the language here
                    final newLanguage = isArabicLanguage ? 'ar' : 'en';
                    // Save newLanguage to SharedPreferences or wherever you store the language preference.
                    // Then, update the app's language and restart the app.
                  });
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}



