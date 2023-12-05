import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../reviews/AddReviewScreen.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.orderSummary,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child:
              const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColor.secondaryGreyColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.orderNumber,
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w600,
                                color: AppColor.primaryBlackColor,
                                fontSize: 16),
                          ),
                          Text(
                            AppLocalizations.of(context)!.orderDate,
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w400,
                                color: AppColor.primaryGreyColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "IW3475453455",
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w600,
                                color: AppColor.primaryBlackColor,
                                fontSize: 14),
                          ),
                          Text(
                            AppLocalizations.of(context)!.delivered,
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ColumnBuilder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: dummyProducts.length,
                itemBuilder: (context, index) {
                  final product = dummyProducts[index];
                  return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const OrderSummary());
                        },
                        child: _buildOrderCard(
                            image: NetworkImage(product.imageAssets[0]),
                            status: 'Delivered',
                            date: 'July 12, 2023',
                            time: '9:45 AM',
                            price: product.price,
                            productName: product.name,
                            productNameAr: product.nameAr,
                            quantity: product.quantity.toString(),
                            showReview: true,
                            buttonText: 'Reorder',
                            isArabic: isArabic,
                            context),
                      ));
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: AppColor.secondaryGreyColor,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.oRDERINFORMATION.toUpperCase(),
                      style: GoogleFonts.tenorSans(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.shippingAddress,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                trailing: Text('1234 Main St, City, Country',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.paymentMethod,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                trailing: Text('Credit Card',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.deliveryMethod,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                trailing: Text('Standard Delivery',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.discount,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                trailing: Text('QAR 10.00',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
              ),
              ListTile(
                title: Text(AppLocalizations.of(context)!.totalPayment,
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                trailing: Text('QAR 40.00',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 50,
                        minWidth: 180,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: AppColor.primaryBlackColor, width: 1),
                        ),
                        onPressed: () {
                          // Handle reorder button press
                        },
                        child: Text(
                          AppLocalizations.of(context)!.reorder,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryBlackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: MaterialButton(
                        height: 50,
                        minWidth: 180,
                        color: AppColor.primaryBlackColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          Get.to(() => const AddReviewScreen());
                        },
                        child: Text(
                          AppLocalizations.of(context)!.leaveFeedback,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderCard(
    BuildContext context, {
    NetworkImage? image,
    String? status,
    String? date,
    String? time,
    double? price,
    String? productName,
    String? quantity,
    bool? showReview,
    String? buttonText,
    String? productNameAr,
    bool? isArabic,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: image!,
                width: 95,
                height: 124,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isArabic == true
                        ? '${price?.toInt()} ${AppLocalizations.of(context)!.qr}'
                        : '${AppLocalizations.of(context)!.qr} ${price?.toInt()}',
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w700,
                        color: AppColor.primaryBlackColor,
                        fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isArabic == true ? productNameAr! : productName!,
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                        fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(AppLocalizations.of(context)!.quantity,
                          style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                              fontSize: 14)),
                      Text(quantity!,
                          style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.w600,
                              color: AppColor.primaryBlackColor,
                              fontSize: 14)),
                      const SizedBox(width: 40),
                      Row(
                        children: [
                          Text(AppLocalizations.of(context)!.color,
                              style: GoogleFonts.beVietnamPro(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.primaryGreyColor,
                                  fontSize: 14)),
                          Text('Yellow',
                              style: GoogleFonts.beVietnamPro(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primaryBlackColor,
                                  fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(AppLocalizations.of(context)!.size,
                          style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                              fontSize: 14)),
                      Text('L',
                          style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.w600,
                              color: AppColor.primaryBlackColor,
                              fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
