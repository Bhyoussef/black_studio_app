import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'package:linkia_ecommerce/views/bag/widget/CustomCartItem.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    final isArabic = AppLocalizations.of(context)!.language == "العربية";

    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
     // drawer: const DrawerWidget(),
  /*    appBar: AppBar(
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
                icon:  SvgPicture.asset(
                  'assets/menu/List.svg',
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
      ),*/
      body: SafeArea(
        child: bagController.items.isEmpty
            ?  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Vector.svg',
                    width: 50,
                    height: 120,
                    color: AppColor.primaryGreyColor,
                  ),
                  Positioned(
                    top: 30, // Adjust the position of the inner image as needed
                    left: 30,
                    child: SvgPicture.asset(
                      'assets/menu/Tote.svg', // Replace with your inner image path
                      width: 50, // Adjust the size of the inner image as needed
                    ),
                  ) ],
              ),
              const SizedBox(height: 20,),
              SvgPicture.asset(
                'assets/icons/divider.svg',
                height: 10,
                color: AppColor.primaryBlackColor,
              ),
              const SizedBox(height: 20,),
              Text(
                AppLocalizations.of(context)!.emptyBagMessage,
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
                            SvgPicture.asset('assets/icons/CircleWavyWarning.svg'),
                            const SizedBox(width: 10,),
                            Flexible(
                              child: Text(
                                AppLocalizations.of(context)!.messageBag,
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
                            AppLocalizations.of(context)!.totalItems,
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            ),
                          ),
                          Text(
                            '\QAR 453.20',
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
                      '0/2 ${AppLocalizations.of(context)!.itemsSelectedText}',
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
                      SvgPicture.asset('assets/icons/Trash (1).svg'),
                      const SizedBox(width: 10,),
                      SvgPicture.asset('assets/icons/heart-search.svg')

                    ],
                  ),
                )
              ],
            ),
          ),
        ), const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                              quantity: product.quantity.toString(), productNameAr: product.product.nameAr,
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
                    padding: const EdgeInsets.all(14.0),
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
                        padding:  isArabic?EdgeInsets.only(right: 6.0):EdgeInsets.only(left: 6.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: AppLocalizations.of(context)!.promoCode,
                            labelStyle: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryGreyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                            suffixIcon: TextButton(
                              onPressed: () {
                                // TODO: Implement the logic for applying the promo code
                              },
                              child: Text(
                                AppLocalizations.of(context)!.apply,
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
                    padding: const EdgeInsets.all(16.0),
                    child: Text(AppLocalizations.of(context)!.priceDetailsText.toUpperCase(),style: GoogleFonts.tenorSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primaryBlackColor
                    ),),
                  ),


                  Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppLocalizations.of(context)!.totalMRPLabel,
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
                          Text(AppLocalizations.of(context)!.discountOnMRPLabel,
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
                          Text(AppLocalizations.of(context)!.couponDiscountLabel,
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
                          Text(AppLocalizations.of(context)!.taxLabel,
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
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(AppLocalizations.of(context)!.totalAmount,
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
                    padding: const EdgeInsets.all(12.0),
                    child: CustomButton(
                      textcolor: AppColor.primaryWhiteColor,
                        backcolor: AppColor.primaryBlackColor,
                        onPressed: () {
                          Get.to(() =>  ChekoutScreen(products: bagController.items));
                        },
                        text: AppLocalizations.of(context)!.checkout
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
