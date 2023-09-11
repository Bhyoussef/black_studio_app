import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BestOffersSection extends StatelessWidget {
  const BestOffersSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.bestOffersText,
                  style: GoogleFonts.tenorSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset('assets/icons/tag.svg')
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.bestPriceText,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppLocalizations.of(context)!.couponCodeText,
                      style: GoogleFonts.tenorSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        AppLocalizations.of(context)!.couponDiscountText,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryGreyColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        AppLocalizations.of(context)!.applicableOnText,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryGreyColor,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        AppLocalizations.of(context)!.viewEligibleProductsText,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          color: AppColor.primaryBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

