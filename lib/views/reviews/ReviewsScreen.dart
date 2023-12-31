import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'AddReviewScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.reviewsTitle,
          style: GoogleFonts.beVietnamPro(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          /*TextButton(
            onPressed: () {
              Get.to(() => const AddReviewScreen());
            },
            child: Text(
              AppLocalizations.of(context)!.addReviewText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*/
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Text(
                      AppLocalizations.of(context)!.reviewsTitle,
                      style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.primaryGreyColor,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppLocalizations.of(context)!.recommendationText,
                    style: GoogleFonts.beVietnamPro(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColor.primaryGreyColor,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '5 ${AppLocalizations.of(context)!.starRatingText}',
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '(24)',
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('4 ${AppLocalizations.of(context)!.starRatingText}',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('(10)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('3 ${AppLocalizations.of(context)!.starRatingText}',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('(04)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('2 ${AppLocalizations.of(context)!.starRatingText}',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('(02)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1 ${AppLocalizations.of(context)!.starRatingText}',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('(01)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.customerRatingText,
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryBlackColor
                      ),
                    ),
                    SizedBox(height: 15),
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
                        Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: (MediaQuery.of(context).size.width - 40) / 5,
                            height: 10,
                            color: AppColor.fourthGreyColor,
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.primaryBlackColor,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppLocalizations.of(context)!.runsSmallText,style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                        Text(AppLocalizations.of(context)!.runsLargeText,style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                    SizedBox(height: 10),
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
                        Text(AppLocalizations.of(context)!.runsSmallText,style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                        Text(AppLocalizations.of(context)!.runsLargeText,style: GoogleFonts.beVietnamPro(
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
                        Text(AppLocalizations.of(context)!.runsSmallText,style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                        Text(AppLocalizations.of(context)!.runsLargeText,style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                ColumnBuilder(
                  shrinkWrap: true,
                  itemCount: 3, // Number of reviews
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColor.primaryBlackColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.primaryBlackColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.primaryBlackColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.primaryBlackColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColor.primaryBlackColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                              Text(
                                '6 ${AppLocalizations.of(context)!.monthsAgoText}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.reviewsTitle,
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: AppColor.primaryBlackColor
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            AppLocalizations.of(context)!.transparentText,
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: AppColor.primaryGreyColor
                            ),
                          ),
                          SizedBox(height: 8),
                          Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
