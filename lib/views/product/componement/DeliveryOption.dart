import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';


class DeleveryOption extends StatelessWidget {
  const DeleveryOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'DELIVERY OPTIONS',
                  style: GoogleFonts.tenorSans(
                      fontSize: 14, fontWeight: FontWeight.w400
                  ,color: AppColor.primaryBlackColor),
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/imgs/delevery.png')
              ],
            ),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Pin Code',
                labelStyle: TextStyle(
                  fontSize: 16,
                ),
                suffixIcon: TextButton(
                  onPressed: () {
                    // Handle check button press
                  },
                  child: Text(
                    'Check',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.only(bottom: 2),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please enter PIN code to cehck delivery time & pay ondelivery availability',
              style: GoogleFonts.beVietnamPro(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.thirdGreyColor),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '100% Original product',
                  style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Pay on delivery might be available',
                  style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Easy 30 days returns and exchanges ',
                  style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Try & buy might be available',
                  style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
