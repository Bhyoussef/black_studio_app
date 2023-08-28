import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/auth/ChangePasswordScreen.dart';
import 'package:linkia_ecommerce/views/myaddresses/AddressesScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationSettingScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

import 'ProfileEditScreen.dart';

class ProfileScreen extends StatefulWidget {
  final bool? isHome;
   ProfileScreen({Key? key, this.isHome}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: widget.isHome == true
            ? IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        )
            : IconButton(
          icon: Image.asset(
            'assets/imgs/List.png',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text(
          'Profile',
          style: GoogleFonts.beVietnamPro(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryBlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ACCOUNT',
              style: GoogleFonts.tenorSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: Image.asset('assets/imgs/User.png',
                  height: 30, width: 30, color: Colors.black),
              title: Text(
                'Edit Profile',
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
              leading: Image.asset('assets/imgs/LockSimple.png',
                  height: 30, width: 30, color: Colors.black),
              title: Text(
                'Change Password',
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
              leading: Image.asset('assets/imgs/BellSimpleRinging.png',
                  height: 30, width: 30, color: Colors.black),
              title: Text(
                'Push Notifications',
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
              leading: Image.asset('assets/imgs/MapPin.png',
                  height: 30, width: 30, color: Colors.black),
              title: Text(
                'My Address',
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
            const SizedBox(height: 32),
            Text('PREFERENCES',
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
                'Keep History Saved',
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
                child: Image.asset('assets/imgs/Trash.png',
                    height: 30, width: 30, color: Colors.red),
              ),
              title: Text(
                'Clear Saved Data',
                style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor),
              ),
              onTap: () {
                // TODO: Implement the logic for clearing saved data
              },
            ),
          ],
        ),
      ),
    );
  }
}
