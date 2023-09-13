import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/Home/HomeScreen.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/brand/BrandScreen.dart';
import 'package:linkia_ecommerce/views/category/CategoryScreen.dart';
import 'package:linkia_ecommerce/views/favorite/FavoriteScreen.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/views/myorders/MyOrdersScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/privacy/PrivacyScreen.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';
import 'package:linkia_ecommerce/views/profile/ProfileScreen.dart';
import 'package:linkia_ecommerce/views/tailored/TailoredScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatefulWidget {

  final VoidCallback openDrawer;
  final int initialIndex;
  final bool? isNotHome;
  final int? currentIndex;
  const MainScreen({super.key, required this.initialIndex, required this.openDrawer, this.isNotHome, this.currentIndex});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final MainController controller = Get.put(MainController());

  final List<String> pageTitles = [];





  final List<Widget> pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const BagScreen(),
    const BrandScreen(),
    ProfileScreen(),
  ];


  final List<List<Widget>> pageActions = [
    // Actions for Home page
    [
      IconButton(
        icon: SvgPicture.asset(
          'assets/drawer/Heart.svg',
          color: Colors.black,
        ),
        onPressed: () {
          Get.to(() => const FavoriteScreen());
        },
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/drawer/Bell.svg',
          color: Colors.black,
        ),
        onPressed: () {
          Get.to(() => const NotificationScreen());
        },
      ),
    ],
    [], // No actions for Category page
    [], // No actions for Bag page
    [], // No actions for Brand page
    [], // No actions for Profile page
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      controller.changePage(widget.initialIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize pageTitles here after context is available
    pageTitles.addAll([
      AppLocalizations.of(context)!.theblackstudio.toUpperCase(),
      AppLocalizations.of(context)!.category,
      AppLocalizations.of(context)!.bag,
      AppLocalizations.of(context)!.brand,
      AppLocalizations.of(context)!.myprofile,
    ]);
    return Scaffold(
      key: _scaffoldKey,
      //drawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/menu/List.svg',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {

            widget.openDrawer();

          },
        ),
        automaticallyImplyLeading: false,
        title: Obx(
              () => Text(
            pageTitles[controller.currentIndex.value],
            style: GoogleFonts.beVietnamPro(
              color: AppColor.primaryBlackColor,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        actions: widget.isNotHome == true ?[]:pageActions[controller.currentIndex.value],
      ),
      body: Obx(
            () => pages[controller.currentIndex.value],
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (_) => BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            setState(() {
              controller.changePage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/menu/HouseSimple.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 0
                    ? Colors.black
                    : Colors.grey,
              ),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/menu/SquaresFour.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 1
                    ? Colors.black
                    : Colors.grey,
              ),
              label: AppLocalizations.of(context)!.category,
            ),
            BottomNavigationBarItem(
              icon: Badge(
                label: Obx(
                      () => Text(
                    Get.find<CartController>().items.length.toString(),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/menu/Tote.svg',
                  height: 30,
                  width: 30,
                  color: controller.currentIndex.value == 2
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              label: AppLocalizations.of(context)!.bag,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/menu/sticker.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 3
                    ? Colors.black
                    : Colors.grey,
              ),
              label: AppLocalizations.of(context)!.brand,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/menu/Smiley.svg',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 4
                    ? Colors.black
                    : Colors.grey,
              ),
              label: AppLocalizations.of(context)!.myprofile,
            ),
          ],
        ),
      ),
    );
  }
}
