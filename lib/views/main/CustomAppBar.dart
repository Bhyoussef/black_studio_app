import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onMenuPressed;
  final VoidCallback? onFavoritePressed;
  final VoidCallback? onNotificationPressed;

  const CustomAppBar({
    required this.title,
    required this.onMenuPressed,
    this.onFavoritePressed,
    this.onNotificationPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.primaryWhiteColor,
      leading: IconButton(
        icon: Image.asset(
          'assets/imgs/List.png',
          color: AppColor.primaryBlackColor,
        ),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: GoogleFonts.beVietnamPro(
          color: AppColor.primaryBlackColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        if (onFavoritePressed != null)
          IconButton(
            icon: Image.asset(
              'assets/imgs/Heart.png',
              color: Colors.black,
            ),
            onPressed: onFavoritePressed,
          ),
        if (onNotificationPressed != null)
          IconButton(
            icon: Image.asset(
              'assets/imgs/Bell.png',
              color: Colors.black,
            ),
            onPressed: onNotificationPressed,
          ),
      ],
    );
  }
}