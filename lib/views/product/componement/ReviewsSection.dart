import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.reviewsText,
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                AppLocalizations.of(context)!.reviewsCountText,
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.averageRatingText,
                    style: GoogleFonts.tenorSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primaryBlackColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.primaryBlackColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.primaryBlackColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.primaryBlackColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.primaryBlackColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star_outline,
                    color: AppColor.primaryBlackColor,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),

          Text(
            AppLocalizations.of(context)!.recommendationText,
            style: GoogleFonts.tenorSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15),
          Text(
            AppLocalizations.of(context)!.customerRatingText,
            style: GoogleFonts.beVietnamPro(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15),
          //Size
          Row(
            children: [
              SvgPicture.asset(
                  'assets/icons/Search results for Measuring tape - Flaticon-2 1.svg'),
              SizedBox(
                width: 10,
              ),
              Text(
                AppLocalizations.of(context)!.sizeText,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.runsSmallText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              Text(AppLocalizations.of(context)!.runsLargeText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
            ],
          ),

          SizedBox(height: 20),

          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                      'assets/icons/Search results for Leaf - Flaticon-2 1.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppLocalizations.of(context)!.comfortText,
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.uncomfortableText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              Text(AppLocalizations.of(context)!.comfortableText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
            ],
          ),

          SizedBox(height: 20),

          Row(
            children: [
              SvgPicture.asset(
                  'assets/icons/Search results for Diamond - Flaticon-2 (1) 1.svg'),
              SizedBox(
                width: 10,
              ),
              Text(
                AppLocalizations.of(context)!.qualityText,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.fourthGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  height: 10,
                  color: AppColor.primaryBlackColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.poorText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              Text(AppLocalizations.of(context)!.greatText, style: GoogleFonts.beVietnamPro(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

