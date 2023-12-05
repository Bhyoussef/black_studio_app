import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HiddenDrawer extends StatefulWidget {
  final int? initialIndex;
  final bool? isNotHome;
  final int? currentIndex;
  const HiddenDrawer({super.key, this.initialIndex, this.isNotHome, this.currentIndex});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  late double xOffset = 0;
  late double xOffsetOpposite = 0;
  late double yOffset = 0;
  late double scaleFactor = 0;
  bool isDraging = false;
  late bool isDrawerOpen;

  final MainController controller = Get.put(MainController());

  @override
  void initState() {
    super.initState();
    closeDrawer();
    Future.delayed(Duration(milliseconds: 100), () {
      controller.changePage(widget.initialIndex!.toInt());
    });
  }

  void closeDrawer() => setState(() {
    xOffset = 0;
    yOffset = 0;
    xOffsetOpposite = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
  });

  void openDrawer() => setState(() {
    xOffset = 250;
    xOffsetOpposite = 150;
    yOffset = 150;
    scaleFactor = 0.7;
    isDrawerOpen = true;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() {
    return DrawerWidget(
      closeDrawer: closeDrawer, // Pass the closeDrawer function to DrawerWidget
    );
  }

  Widget buildPage() {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";

    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDraging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDraging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            if (isArabic) {
              closeDrawer();
            } else {
              openDrawer();
            }
          } else if (details.delta.dx < -delta) {
            if (isArabic) {
              openDrawer();
            } else {
              closeDrawer();
            }
          }
          isDraging = false;
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          transform: Matrix4.translationValues(
            isArabic ? -xOffsetOpposite : xOffset,
            yOffset,
            0,
          )..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(

              borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0),
              child: Container(
                decoration: BoxDecoration(
                  color: isDrawerOpen ? AppColor.primaryWhiteColor :
                  AppColor.primaryWhiteColor,
                  boxShadow:
                       [
                    BoxShadow(
                      color: Color(0xff00001A),
                      offset: Offset(0, 50),
                      blurRadius: 99,
                    ),
                  ] ,// Empty boxShadow when the drawer is closed
                  borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0),
                ),
                child: Directionality(
                  textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                  child: MainScreen(
                    initialIndex: 0,
                    openDrawer: openDrawer,
                    isNotHome: widget.isNotHome,
                    onTitleChanged: (String value) {  },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

