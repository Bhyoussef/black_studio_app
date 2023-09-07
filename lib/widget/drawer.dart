import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/brand/BrandScreen.dart';
import 'package:linkia_ecommerce/views/favorite/FavoriteScreen.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/views/myorders/MyOrdersScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/privacy/PrivacyScreen.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';
import 'package:linkia_ecommerce/views/profile/ProfileScreen.dart';
import 'package:linkia_ecommerce/views/tailored/TailoredScreen.dart';

import 'HiddenDrawerMenu.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primaryWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10, top: 40),
              child: GestureDetector(
                onTap: () {
                  Get.offAll(()=>HiddenDrawer(initialIndex: 0,));
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.primaryGreyColor,
                      width: .2,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: AppColor.primaryWhiteColor,
                    radius: 12,
                    foregroundColor: AppColor.primaryBlackColor,
                    child: Icon(
                      Icons.close,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/bag-tick.svg',
              title: 'New Arrivals',
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'NEW ARRIVALS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Tag.svg',
              title: 'Best Sellers',
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'BEST SELLERS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/brand.svg',
              title: 'Brands',
              onTap: () {
                Get.back();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HiddenDrawer(initialIndex: 3),
                  ),
                );
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/tailored.svg',
              title: 'Tailored',
              onTap: () {
                Get.back();
                Get.to(()=>TailoredScreen(isHome: true));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/receipt-2.svg',
              title: 'Sale',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Heart.svg',
              title: 'Favourite',
              onTap: () {
                Get.to(()=>FavoriteScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Bell.svg',
              title: 'Notification',
              onTap: () {
                Get.back();
                Get.to(() => NotificationScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/bag-tick.svg',
              title: 'My Orders',
              onTap: () {
                Get.back();
                Get.to(() => MyOrdersScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Gear.svg',
              title: 'Settings',
              onTap: () {
                Get.back();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HiddenDrawer(initialIndex: 4,isNotHome: true,),
                  ),
                );
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/CircleWavyQuestion.svg',
              title: 'FAQs',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Headset.svg',
              title: 'Help and Support',
              onTap: () {},
            ), DrawerListItem(
              leadingAsset: 'assets/drawer/UserCirclePlus.svg',
              title: 'Refer a Friend',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Note.svg',
              title: 'Privacy Policy',
              onTap: () {
                Get.back();
                Get.to(() => PrivacyScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/UploadSimple.svg',
              title: 'Logout',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Logout',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      content: Text(
                        'Are you sure you want to logout?',
                        style: GoogleFonts.tenorSans(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Perform logout action
                            // TODO: Implement your logout functionality here
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text(
                            'Yes',
                            style: GoogleFonts.tenorSans(
                              color: AppColor.primaryBlackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text(
                            'No',
                            style: GoogleFonts.tenorSans(
                              color: AppColor.primaryBlackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            // Add more list tiles here
          ],
        ),
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final String leadingAsset;
  final String title;
  final VoidCallback onTap;

  const DrawerListItem({
    required this.leadingAsset,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(leadingAsset,height: 24,), // Use SvgPicture.asset for SVG images
      title: Text(
        title,
        style: GoogleFonts.beVietnamPro(
          color: AppColor.primaryBlackColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap,
    );
  }
}

