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
  bool isSelected = false; // Initialize with your desired value


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
            :SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: AppColor.secondaryGreyColor,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/imgs/CircleWavyWarning.png'),
                            const SizedBox(width: 10,),
                            Flexible(
                              child: Text(
                                'Spend QAR 165 and get 10% off everything with code: GET 10 some exclusions may apply.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.beVietnamPro(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.primaryGreyColor
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 46,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 Items: Total (excluding delivery)',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            ),
                          ),
                          Text(
                            '\$453.20',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primaryBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


          Container(
          height: 46,
          width: double.infinity,
          color: AppColor.secondaryGreyColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: AppColor.primaryWhiteColor,
                      activeColor: AppColor.primaryBlackColor,
                      value: isSelected,
                      onChanged: (newValue) {
                        setState(() {
                          isSelected = newValue!;
                        });
                      },
                    ),
                    Text(
                      '0/2 ITEMS SELECTED',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      ),

                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/imgs/Trash (2).png'),
                      const SizedBox(width: 10,),
                      Image.asset('assets/imgs/heart-search.png')

                    ],
                  ),
                )
              ],
            ),
          ),
        ),




          const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GetBuilder<CartController>(
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
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 3,
                      height: 1,
                      color: AppColor.secondaryGreyColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 3,
                      height: 1,
                      color: AppColor.secondaryGreyColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('price details(2 items)'.toUpperCase(),style: GoogleFonts.tenorSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primaryBlackColor
                    ),),
                  ),


                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total MRP :',
                              style: TextStyle(
                                color: AppColor.primaryGreyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              )), Text('2500 QAR',
                              style: TextStyle(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              )),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount on MRP:',
                              style: TextStyle(
                                color: AppColor.primaryGreyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ))  ,  Text('1000 QAR',
                              style: TextStyle(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              )),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Coupon Discount:',
                              style: TextStyle(
                                color: AppColor.primaryGreyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),Text("Apply Coupon",
                              style: TextStyle(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                decoration: TextDecoration.underline
                              )),
                        ],),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tax:',
                              style: TextStyle(
                                color: AppColor.primaryGreyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              )),Text('400 QAR',
                              style: TextStyle(
                                  color: AppColor.primaryBlackColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 3,
                      height: 1,
                      color: AppColor.secondaryGreyColor,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total Amount',
                            style: TextStyle(
                              color: AppColor.primaryGreyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            )),
                        GetBuilder<CartController>(
                          builder: (controller) {
                            return Text(
                              ' ${controller.total.toInt()} QAR',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // TODO: Implement the total amount section

                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      textcolor: AppColor.primaryWhiteColor,
                        backcolor: AppColor.primaryBlackColor,
                        onPressed: () {
                          Get.to(() =>  ChekoutScreen(products: bagController.items));
                        },
                        text: 'Checkout'
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
