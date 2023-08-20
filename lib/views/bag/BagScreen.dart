import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'package:linkia_ecommerce/views/bag/widget/CustomCartItem.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

import 'ChekoutScreen.dart';

class BagScreen extends StatefulWidget {
  final bool? isHome;
  const BagScreen({Key? key, this.isHome}) : super(key: key);

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> products = [
    'Product 1',
    'Product 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: widget.isHome == true
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            : IconButton(
                icon: Image.asset(
                  'assets/imgs/List.png',
                  color: AppColor.primaryBlackColor,
                ),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text(
          'Bag',
          style: GoogleFonts.beVietnamPro(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                ColumnBuilder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CartItem(
                      productName: products[index],
                      price: 19.99,
                      category: 'Electronics',
                      imageUrl: 'https://via.placeholder.com/100',
                      onPlusPressed: () {
                        // TODO: Implement the logic for increasing the quantity
                      },
                      onMinusPressed: () {
                        // TODO: Implement the logic for decreasing the quantity
                      },
                      onRemovePressed: () {
                        // TODO: Implement the logic for removing the product
                      },
                    );
                  },
                ),
                const SizedBox(height: 16),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.primaryGreyColor,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Promo Code',
                        labelStyle: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        suffixIcon: TextButton(
                          onPressed: () {
                            // TODO: Implement the logic for applying the promo code
                          },
                          child: Text(
                            'Apply',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),

                const SizedBox(height: 16),
                // TODO: Implement the price details section

                const SizedBox(height: 16),
                Text('Total Amount',
                    style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400)),
                // TODO: Implement the total amount section

                const SizedBox(height: 32),
                CustomButton(
                  backcolor: AppColor.primaryBlackColor,
                    onPressed: () {
                      Get.to(() => const ChekoutScreen());
                    },
                    text: 'Checkout'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
