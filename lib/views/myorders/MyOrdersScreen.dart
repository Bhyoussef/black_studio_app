import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'OrderSummaryScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.myOrders,
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
            Get.offAll(() => HiddenDrawer(initialIndex: 0,));
          },
          child: const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor
                        .secondaryGreyColor, // Customize the border color
                    width: 1.0, // Customize the border width
                  ),
                  top: BorderSide(
                    color: AppColor
                        .secondaryGreyColor, // Customize the border color
                    width: 1.0, // Customize the border width
                  ),
                ),
              ),
              child: TabBar(
                indicatorColor: AppColor.primaryBlackColor,
                labelStyle: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                labelColor: AppColor.primaryBlackColor,
                unselectedLabelStyle: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                unselectedLabelColor:
                AppColor.primaryBlackColor.withOpacity(0.5),
                tabs:  [
                  Tab(
                    text: AppLocalizations.of(context)!.ongoing,
                  ),
                  Tab(
                    text: AppLocalizations.of(context)!.completed,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.secondaryGreyColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      'assets/icons/box-time.svg',
                                      height: 30,
                                    ),
                                  )),
                              title: Text(
                                AppLocalizations.of(context)!.ongoing, // Updated label with translation
                                style: GoogleFonts.beVietnamPro(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.dateTime,
                                    style: GoogleFonts.beVietnamPro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                               /*   Text(
                                    '10:00 AM',
                                    style: GoogleFonts.beVietnamPro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),*/
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      ColumnBuilder(
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
                                context,
                                isArabic:isArabic,
                                image: NetworkImage(product.imageAssets[0]),
                                status: AppLocalizations.of(context)!.ongoing, // Updated label with translation
                                date: AppLocalizations.of(context)!.dateTime,
                                time: '10:00 AM',
                                price: product.price,
                                productName: product.name,
                                productNameAr: product.nameAr,
                                quantity: product.quantity.toString(),
                                showReview: false,
                                buttonText: AppLocalizations.of(context)!.trackOrder, // Updated label with translation
                              ),
                            ),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
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
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                AppLocalizations.of(context)!.trackOrder, // Updated label with translation
                                style: GoogleFonts.beVietnamPro(
                                  color: AppColor.primaryBlackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.secondaryGreyColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/box-tick.svg',
                                    height: 30,
                                  ),
                                ),
                              ),
                              title: Text(
                                AppLocalizations.of(context)!.delivered, // Updated label with translation
                                style: GoogleFonts.beVietnamPro(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.dateTime,
                                    style: GoogleFonts.beVietnamPro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                /*  Text(
                                    '10:00 AM',
                                    style: GoogleFonts.beVietnamPro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),*/
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
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
                                  context,
                                  isArabic:isArabic,
                                  image: NetworkImage(product.imageAssets[0]),
                                  status: AppLocalizations.of(context)!.delivered, // Updated label with translation
                                  date: 'July 12, 2023',
                                  time: '9:45 AM',
                                  price: product.price,
                                  productName: product.name,
                                  productNameAr:product.nameAr,
                                  quantity: product.quantity.toString(),
                                  showReview: true,
                                  buttonText: AppLocalizations.of(context)!.reorder, // Updated label with translation
                                ),
                              ));
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
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
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                AppLocalizations.of(context)!.reorder, // Updated label with translation
                                style: GoogleFonts.beVietnamPro(
                                  color: AppColor.primaryBlackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard(BuildContext context,{
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
                width: 60,
                height: 70,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isArabic == true? '${price!.toInt()} ${AppLocalizations.of(context)!.qr}'
                        :'${AppLocalizations.of(context)!.qr} ${price!.toInt()}',
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w700,
                        color: AppColor.primaryBlackColor,
                        fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                   isArabic == true ? productNameAr!: productName!,
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                        fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 8),
                  Text('${AppLocalizations.of(context)!.quantity} $quantity',
                      style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryGreyColor,
                          fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
