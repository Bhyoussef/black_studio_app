import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';
import 'package:linkia_ecommerce/views/search/SearchScreen.dart';
import 'package:linkia_ecommerce/views/tailored/TailoredScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> brands = [
    'assets/icons/Boss.svg',
    'assets/icons/Burberry.svg',
    'assets/icons/Catier.svg',
    'assets/icons/Gucci.svg',
    'assets/icons/Prada.svg',
    'assets/icons/Tiffany & Co.svg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
     // drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  cursorColor: AppColor.primaryBlackColor,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColor.primaryGreyColor,
                    ),
                    hintText: AppLocalizations.of(context)!.search_hint,
                    filled: true,
                    fillColor: AppColor.secondaryGreyColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onTap: () {
                    Get.to(() => const SearchScreen());
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/menu/Rectangle 1133 (1).png',
                    fit: BoxFit.cover,
                    height: 260,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppLocalizations.of(context)!.collection,
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppLocalizations.of(context)!.findyourdesiredproductthatyouwanttobuyeasily,
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 16),
                        MaterialButton(
                          color: AppColor.primaryWhiteColor,
                          height: 40,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {
                            // Handle "Shop Now" button press
                          },
                          child: Text(
                            AppLocalizations.of(context)!.shop_now,
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryBlackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() =>  AllProduct(title: AppLocalizations.of(context)!.ready_to_wear.toUpperCase()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 175,
                    width: 165,
                    decoration: BoxDecoration(
                      color: AppColor.primaryBlackColor,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/drawer/Frame2.svg', // Replace with your image asset
                          fit: BoxFit.contain,
                          height: 65,
                          width: 58,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppLocalizations.of(context)!.ready_to_wear,
                          style: GoogleFonts.beVietnamPro(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const TailoredScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 175,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/menu/Frame.svg',
                          fit: BoxFit.contain,
                          height: 65,
                          width: 58,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppLocalizations.of(context)!.tailored,
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.secondaryBlackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.to(() =>  AllProduct(title: AppLocalizations.of(context)!.newArrivals));
              },
              child: Text(
                AppLocalizations.of(context)!.newArrivals.toUpperCase(),
                style: GoogleFonts.tenorSans(
                  color: AppColor.primaryBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/divider.svg',
              height: 10,
              color: AppColor.primaryBlackColor,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDetail(product: dummyProducts[0]));
                    },
                    child: buildProductCard(dummyProducts[0]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDetail(product: dummyProducts[1]));
                    },
                    child: buildProductCard(dummyProducts[1]),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/divider.svg',
              height: 10,
              color: AppColor.primaryBlackColor,
            ),
            const SizedBox(height: 10),

            //Brands

            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Wrap(
                spacing: 30,
                runSpacing: 30,
                direction: Axis.horizontal,
                children: List.generate(brands.length, (index) {
                  final brand = brands[index];

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          brand,
                          width: 70, // Adjust the width of the SVG image
                          height: 14, // Adjust the height of the SVG image
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/divider.svg',
              height: 10,
              color: AppColor.primaryBlackColor,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 16),
            Container(
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/menu/Group 764.png',
                fit: BoxFit.cover,
                height: 260,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Get.to(() =>  AllProduct(title: AppLocalizations.of(context)!.bestSellers.toUpperCase()));
              },
              child: Text(
                AppLocalizations.of(context)!.bestSellers.toUpperCase(),
                style: GoogleFonts.tenorSans(
                  color: AppColor.primaryBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SvgPicture.asset(
              'assets/icons/divider.svg',
              height: 10,
              color: AppColor.primaryBlackColor,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDetail(product: dummyProducts[0]));
                    },
                    child: buildProductCard(dummyProducts[0]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDetail(product: dummyProducts[1]));
                    },
                    child: buildProductCard(dummyProducts[1]),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildProductCard(Product product) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Column(
      children: [
        Image.network(
          product.imageAssets[0], // Use the first image from the list
          height: 200,
          width: 165,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(isArabic?product.nameAr:
                  product.name,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Text(
                isArabic?product.categoryAr:product.category,
                style: GoogleFonts.beVietnamPro(
                  fontSize: 12,
                  color: AppColor.primaryGreyColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                isArabic? '${product.price.toInt()} ${AppLocalizations.of(context)!.qr}'
                    :'${AppLocalizations.of(context)!.qr} ${product.price.toInt()}',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryBlackColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
