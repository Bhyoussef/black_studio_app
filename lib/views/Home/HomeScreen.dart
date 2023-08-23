import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/notification/NotificationScreen.dart';
import 'package:linkia_ecommerce/views/product/AllProduct.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';
import 'package:linkia_ecommerce/views/search/SearchScreen.dart';
import 'package:linkia_ecommerce/views/tailored/TailoredScreen.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: IconButton(
          icon: Image.asset(
            'assets/imgs/List.png',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'Linkia',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/imgs/Heart.png',
              color: Colors.black,
            ),
            onPressed: () {
              // Handle favorite button press
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/imgs/Bell.png',
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(() => const NotificationScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextFormField(
                  cursorColor: AppColor.primaryBlackColor,
                  decoration: InputDecoration(
                    hintText: 'What can we help you find?',
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
              SizedBox(height: 16),
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
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/demo/Rectangle 1133.png',
                      fit: BoxFit.cover,
                      height: 260,
                      width: double.infinity,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SPRING/SUMMER 2022 collection',
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Find your desired product that you want to buy easily',
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
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
                              'Shop Now',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [

                  GestureDetector(
                    onTap: () {
                      Get.to(() => AllProduct(title: 'READY TO WEAR'));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        color: AppColor.primaryBlackColor,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/imgs/Frame.png', // Replace with your image asset
                            fit: BoxFit.contain,
                            height: 80,
                            width: double.infinity,
                          ),
                          Text(
                            'Ready to Wear',
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 30),

                  // Container for "Tailor"
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const TailoredScreen());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/imgs/Frame (1).png', // Replace with your image asset
                            fit: BoxFit.contain,
                            height: 80,
                            width: double.infinity,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Tailored',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.secondaryBlackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.to(() => AllProduct(title: 'NEW ARRIVALS'));
                },
                child: Text(
                  'NEW ARRIVALS',
                  style: GoogleFonts.tenorSans(
                    color: AppColor.primaryBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                'assets/imgs/divider.png',
                width: 150,
                height: 50,
                color: AppColor.primaryBlackColor,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyProducts.length,
                  itemBuilder: (context, index) {
                    final product = dummyProducts[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetail(product: product));
                        },
                        child: buildProductCard(product),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
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
                  'assets/demo/Group 761.png',
                  fit: BoxFit.cover,
                  height: 260,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.to(() => AllProduct(title: 'BEST SELLERS'));
                },
                child: Text(
                  'BEST SELLERS',
                  style: GoogleFonts.tenorSans(
                    color: AppColor.primaryBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                'assets/imgs/divider.png',
                width: 150,
                height: 50,
                color: AppColor.primaryBlackColor,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyProducts.length,
                  itemBuilder: (context, index) {
                    final product = dummyProducts[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetail(product: product));
                        },
                        child: buildProductCard(product),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCard(Product product) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Image.asset(
            product.imageAssets[0], // Use the first image from the list
            height: 200,
            width: 165,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  product.category,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 12,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  '${product.price.toString()} QAR',
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
      ),
    );
  }
}
