import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/favorite/FavoriteScreen.dart';
import 'package:linkia_ecommerce/views/myorders/MyOrdersScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/privacy/PrivacyScreen.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';
import 'package:linkia_ecommerce/views/tailored/TailoredScreen.dart';
import 'HiddenDrawerMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Drawer(
        shadowColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              alignment: isArabic?Alignment.topRight:Alignment.topLeft,
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
              title: AppLocalizations.of(context)!.newArrivals,
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'NEW ARRIVALS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Tag.svg',
              title: AppLocalizations.of(context)!.bestSellers,
              onTap: () {
                Get.back();
                Get.to(()=>AllProduct(title: 'BEST SELLERS',));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/brand.svg',
              title: AppLocalizations.of(context)!.brands,
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
              title: AppLocalizations.of(context)!.tailored,
              onTap: () {
                Get.back();
                Get.to(()=>TailoredScreen(isHome: true));
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/receipt-2.svg',
              title: AppLocalizations.of(context)!.sale,
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Heart.svg',
              title: AppLocalizations.of(context)!.favorite,
              onTap: () {
                Get.to(()=>FavoriteScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Bell.svg',
              title: AppLocalizations.of(context)!.notification,
              onTap: () {
                Get.back();
                Get.to(() => NotificationScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/bag-tick.svg',
              title: AppLocalizations.of(context)!.myOrders,
              onTap: () {
                Get.back();
                Get.to(() => MyOrdersScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Gear.svg',
              title: AppLocalizations.of(context)!.settings,
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
              title: AppLocalizations.of(context)!.faqs,
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Headset.svg',
              title: AppLocalizations.of(context)!.helpAndSupport,
              onTap: () {},
            ), DrawerListItem(
              leadingAsset: 'assets/drawer/UserCirclePlus.svg',
              title: AppLocalizations.of(context)!.referAFriend,
              onTap: () {},
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/Note.svg',
              title: AppLocalizations.of(context)!.privacyPolicy,
              onTap: () {
                Get.back();
                Get.to(() => PrivacyScreen());
              },
            ),
            DrawerListItem(
              leadingAsset: 'assets/drawer/UploadSimple.svg',
              title: AppLocalizations.of(context)!.logout,
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

