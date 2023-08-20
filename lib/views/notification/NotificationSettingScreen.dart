import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({Key? key}) : super(key: key);

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
            'Notification Settings',
            style: GoogleFonts.beVietnamPro(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Allow Push Notifications',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                trailing: Container(
                  height: 25,
                  width: 45,
                  child: FlutterSwitch(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,

                    value: true, // Set the initial value for the switch button
                    onToggle: (value) {
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Offers and Updates',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                trailing: Container(
                  height: 25,
                  width: 45,
                  child: FlutterSwitch(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,

                    value: true, // Set the initial value for the switch button
                    onToggle: (value) {
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Payment',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                trailing: Container(
                  height: 25,
                  width: 45,
                  child: FlutterSwitch(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,

                    value: true, // Set the initial value for the switch button
                    onToggle: (value) {
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Order Update',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                trailing: Container(
                  height: 25,
                  width: 45,
                  child: FlutterSwitch(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,

                    value: true, // Set the initial value for the switch button
                    onToggle: (value) {
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
