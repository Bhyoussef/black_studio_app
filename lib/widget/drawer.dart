import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/myorders/MyOrdersScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/privacy/PrivacyScreen.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';

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
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 25,
                  height: 25,
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
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/bag-happy.png',
              title: 'New Arrivals',
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'NEW ARRIVALS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/Tag.png',
              title: 'Best Sellers',
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'BEST SELLERS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/receipt-2.png',
              title: 'Sale',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/Heart.png',
              title: 'Favourite',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/Bell.png',
              title: 'Notification',
              onTap: () {
                Get.back();
                Get.to(() => NotificationScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/bag-tick.png',
              title: 'My Orders',
              onTap: () {
                Get.back();
                Get.to(() => MyOrdersScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/CircleWavyQuestion.png',
              title: 'FAQs',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/Headset.png',
              title: 'Help and Support',
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/privacy.png',
              title: 'Privacy Policy',
              onTap: () {
                Get.back();
                Get.to(() => PrivacyScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/imgs/UploadSimple.png',
              title: 'Logout',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Logout',
                        style: GoogleFonts.tenorSans(
                          color: AppColor.primaryBlackColor,
                          fontSize: 20,
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
      leading: Image.asset(leadingAsset),
      title: Text(
        title,
        style: GoogleFonts.beVietnamPro(
          color: AppColor.primaryBlackColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap,
    );
  }
}
