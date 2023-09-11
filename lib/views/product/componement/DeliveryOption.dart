import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeliveryOption extends StatelessWidget {
  const DeliveryOption({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.deliveryOptionsText,
                  style: GoogleFonts.tenorSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset('assets/icons/group.svg'),
              ],
            ),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.enterPinCodeLabel,
                labelStyle: TextStyle(
                  fontSize: 16,
                ),
                suffixIcon: TextButton(
                  onPressed: () {
                    // Handle check button press
                  },
                  child: Text(
                    AppLocalizations.of(context)!.checkButtonLabel,
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
              AppLocalizations.of(context)!.deliveryTimeAvailabilityText,
              style: GoogleFonts.beVietnamPro(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColor.thirdGreyColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.originalProductText,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryGreyColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  AppLocalizations.of(context)!.payOnDeliveryText,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryGreyColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  AppLocalizations.of(context)!.returnsExchangesText,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryGreyColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  AppLocalizations.of(context)!.tryAndBuyText,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryGreyColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
