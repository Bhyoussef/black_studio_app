import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/Home/HomeScreen.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/brand/BrandScreen.dart';
import 'package:linkia_ecommerce/views/category/CategoryScreen.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/profile/ProfileScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

import 'CustomAppBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final MainController controller = Get.put(MainController());

  final List<Widget> pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const BagScreen(),
    const BrandScreen(),
    ProfileScreen(),
  ];

  final List<String> pageTitles = [
    'Home',
    'Category',
    'Bag',
    'Brand',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
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
          type: BottomNavigationBarType.fixed, // Set type to fixed
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/HouseSimple.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 0
                    ? Colors.black
                    : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/SquaresFour.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 1
                    ? Colors.black
                    : Colors.grey,
              ),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                label: Obx(
                  () => Text(
                    Get.find<CartController>().items.length.toString(),
                  ),
                ),
                child: Image.asset(
                  'assets/imgs/Tote.png',
                  height: 30,
                  width: 30,
                  color: controller.currentIndex.value == 2
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/sticker.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 3
                    ? Colors.black
                    : Colors.grey,
              ),
              label: 'Brand',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/imgs/Smiley.png',
                height: 30,
                width: 30,
                color: controller.currentIndex.value == 4
                    ? Colors.black
                    : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
