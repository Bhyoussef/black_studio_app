import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backcolor;
  final Color textcolor;
  const CustomButton({super.key, required this.onPressed, required this.text, required this.backcolor, required this.textcolor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: backcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: GoogleFonts.beVietnamPro(
                color: AppColor.primaryWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}