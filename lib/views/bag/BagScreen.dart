import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
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


  @override
  Widget build(BuildContext context) {
    final bagController = Get.find<CartController>();

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
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: SafeArea(
        child:    bagController.items.isEmpty
            ?  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/imgs/Group 1000002688.png'), // Replace with your first image path
                  Image.asset('assets/imgs/document-text.png'), // Replace with your second image path
                ],
              ),
              Image.asset(
                'assets/imgs/divider.png',
                width: 150,
                height: 50,
                color: AppColor.primaryBlackColor,
              ),
              Text(
                'Currently, you don\'t have any item in your Bag.',
                style: GoogleFonts.beVietnamPro(
                    fontSize: 12, fontWeight: FontWeight.w400,
                    color: AppColor.primaryGreyColor),
              ),
            ],
          ),
        )
            :Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
              GetBuilder<CartController>(
                  builder: (_) {
                    return ColumnBuilder(
                      shrinkWrap: true,
                      itemCount: bagController.items.length,
                      itemBuilder: (context, index) {
                        final product = bagController.items[index];

                        return CartItem(
                          productName: product.product.name,
                          price: product.product.price,
                          category: product.product.category,
                          imageUrl: product.product.imageAssets[0],
                          onPlusPressed: () {
                            Get.find<CartController>().addQuantity(product);
                          },
                          onMinusPressed: () {
                            Get.find<CartController>().lowQuantity(product);
                          },
                          onRemovePressed: () {
                            //bagController.removeProduct(index);
                          },
                          quantity: product.quantity.toString(),
                        );
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount',
                        style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400)),
                    GetBuilder<CartController>(
                      builder: (controller) {
                        return Text(
                          ' ${controller.total.toInt()}',
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                // TODO: Implement the total amount section

                const SizedBox(height: 32),
                CustomButton(
                  textcolor: AppColor.primaryWhiteColor,
                    backcolor: AppColor.primaryBlackColor,
                    onPressed: () {
                      Get.to(() =>  ChekoutScreen(products: bagController.items));
                    },
                    text: 'Checkout'
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
