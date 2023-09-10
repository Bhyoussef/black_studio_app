import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool pushNotification = false;
  bool offersUpdate = false;
  bool payment = false;
  bool orderUpdate = false;
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
            AppLocalizations.of(context)!.notificationSettingsTitle,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  AppLocalizations.of(context)!.allowPushNotifications,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                trailing: Container(
                  height: 25,
                  width: 45,
                  child:   FlutterSwitch(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                    value: pushNotification,
                    onToggle: (value) {
                      setState(() {
                        pushNotification = value;
                      });
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  AppLocalizations.of(context)!.offersAndUpdates,
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
                    value: offersUpdate,
                    onToggle: (value) {
                      setState(() {
                        offersUpdate = value;
                      });
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  AppLocalizations.of(context)!.payment,
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
                    value: payment,
                    onToggle: (value) {
                      setState(() {
                        payment = value;
                      });
                      // TODO: Implement the logic for enabling/disabling push notifications
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  AppLocalizations.of(context)!.orderUpdate,
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
                    value: orderUpdate,
                    onToggle: (value) {
                      setState(() {
                        orderUpdate = value;
                      });
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
