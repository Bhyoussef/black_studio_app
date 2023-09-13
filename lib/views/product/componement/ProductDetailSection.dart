import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDetailSection extends StatelessWidget {
  const ProductDetailSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryWhiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.productDetailsText,
                  style: GoogleFonts.tenorSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset('assets/icons/document-text.svg', height: 20,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.productTitleText,
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
                      AppLocalizations.of(context)!.productDesignText,
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
                      AppLocalizations.of(context)!.productStrapsText,
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
                      AppLocalizations.of(context)!.productLaceText,
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
                      AppLocalizations.of(context)!.productTieUpsText,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context)!.sizeFitText,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.modelInfoText,
                          style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
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
                          AppLocalizations.of(context)!.fitsTrueToSizeText,
                          style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
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
                          AppLocalizations.of(context)!.suggestNormalSizeText,
                          style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context)!.materialCareText,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryBlackColor,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.polyesterText,
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/Rectangle 327.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.dryCleanText,
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context)!.specificationsText,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryBlackColor,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                Container(
                  color: AppColor.primaryWhiteColor,
                  child: Table(
                    columnWidths: {
                      0: FixedColumnWidth(200), // Adjust column widths as needed
                      1: FlexColumnWidth(),
                    },
                    children: [
                      buildTableRow(AppLocalizations.of(context)!.sleeveLengthTextKey, 'Sleeveless'),
                      buildTableRow(AppLocalizations.of(context)!.neckTextKey, 'Shoulder Straps'),
                      buildTableRow(AppLocalizations.of(context)!.typeTextKey, 'Empire'),
                      buildTableRow(AppLocalizations.of(context)!.printPatternTypeTextKey, 'Self Design'),
                      buildTableRow(AppLocalizations.of(context)!.sleeveStylingTextKey, 'Shoulder Straps'),
                      buildTableRow(AppLocalizations.of(context)!.transparencyTextKey, 'Opaque'),
                      buildTableRow(AppLocalizations.of(context)!.liningTextKey, 'Has a lining'),
                      buildTableRow(AppLocalizations.of(context)!.closureTextKey, 'Tie-ups'),
                      buildTableRow(AppLocalizations.of(context)!.lengthTextKey, 'Regular'),
                      buildTableRow(AppLocalizations.of(context)!.fabricTypeTextKey, 'Lace'),
                      buildTableRow(AppLocalizations.of(context)!.occasionTextKey, 'Casual'),
                      buildTableRow(AppLocalizations.of(context)!.weaveTypeTextKey, 'Woven'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Divider
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColor.secondaryGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}

// Function to build a table row with two texts
TableRow buildTableRow(String leftText, String rightText) {
  return TableRow(
    children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            leftText,
            style: GoogleFonts.beVietnamPro(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryGreyColor,
            ),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            rightText,
            style: GoogleFonts.beVietnamPro(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryBlackColor,
            ),
          ),
        ),
      ),
    ],
  );
}

