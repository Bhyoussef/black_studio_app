import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChekoutScreen extends StatefulWidget {
  final List<CartItem> products;
  const ChekoutScreen({super.key, required this.products});

  @override
  State<ChekoutScreen> createState() => _ChekoutScreenState();
}

class _ChekoutScreenState extends State<ChekoutScreen> {
  List<String> selectedPaymentMethods = [];

  void _onPaymentMethodSelected(String method, bool selected) {
    setState(() {
      if (selected) {
        selectedPaymentMethods.add(method);
      } else {
        selectedPaymentMethods.remove(method);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryWhiteColor,
        elevation: 0,
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
          AppLocalizations.of(context)!.checkout,
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ColumnBuilder(
                  itemCount: widget.products.length,
                  itemBuilder: (context, index) {
                    final product = widget.products[index];

                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: _buildOrderCard(
                          image: NetworkImage(product.product.imageAssets[0]),
                          price: product.product.price,
                          productName: product.product.name,
                          quantity: product.product.quantity.toString(),
                          productNameAr:product.product.nameAr,
                            isArabic:isArabic
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: isArabic?EdgeInsets.only(right: 16.0):EdgeInsets.only(left: 16.0),
                      child: Text(
                        AppLocalizations.of(context)!.shippingAddress.toUpperCase(),
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryBlackColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 16.0,right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('P.O.Box 1618, Shaksy Bldg, Al Romailah St',   style: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor
                    ),),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios, size: 20,color: AppColor.primaryGreyColor,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: isArabic?EdgeInsets.only(right: 16.0):EdgeInsets.only(left: 16.0),
                      child: Text(
                        AppLocalizations.of(context)!.paymentMethod.toUpperCase(),
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.primaryBlackColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.black, // Customize the checkbox color
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Customize the border radius
                        ),
                      ),
                    ),
                    child: CheckboxListTile(
                      checkColor: AppColor.primaryWhiteColor,
                      activeColor: AppColor.primaryBlackColor,
                      title: const Text('PayPal',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                          )),
                      value: selectedPaymentMethods.contains('PayPal'),
                      onChanged: (value) {
                        _onPaymentMethodSelected('PayPal', value!);
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.black, // Customize the checkbox color
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Customize the border radius
                        ),
                      ),
                    ),
                    child: CheckboxListTile(
                      checkColor: AppColor.primaryWhiteColor,
                      activeColor: AppColor.primaryBlackColor,
                      title: const Text('Apple Pay',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                          )),
                      value: selectedPaymentMethods.contains('Apple Pay'),
                      onChanged: (value) {
                        _onPaymentMethodSelected('Apple Pay', value!);
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.black, // Customize the checkbox color
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Customize the border radius
                        ),
                      ),
                    ),
                    child: CheckboxListTile(
                      checkColor: AppColor.primaryWhiteColor,
                      activeColor: AppColor.primaryBlackColor,
                      title: const Text('Credit/Debit Card',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor
                          )),
                      value:
                          selectedPaymentMethods.contains('Credit/Debit Card'),
                      onChanged: (value) {
                        _onPaymentMethodSelected('Credit/Debit Card', value!);
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.black, // Customize the checkbox color
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Customize the border radius
                        ),
                      ),
                    ),
                    child: CheckboxListTile(
                      checkColor: AppColor.primaryWhiteColor,
                      activeColor: AppColor.primaryBlackColor,
                      title: const Text('Bank Transfer',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor
                          )),
                      value: selectedPaymentMethods.contains('Bank Transfer'),
                      onChanged: (value) {
                        _onPaymentMethodSelected('Bank Transfer', value!);
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
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
                    padding: isArabic?EdgeInsets.only(right: 8.0): EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: AppLocalizations.of(context)!.promoCode,
                        labelStyle: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.priceDetails.toUpperCase(),
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildPriceDetailRow(AppLocalizations.of(context)!.total, ' 1000 QAR'),
                      _buildPriceDetailRow(AppLocalizations.of(context)!.discount, '-100 QAR'),
                      _buildPriceDetailRow(AppLocalizations.of(context)!.couponDiscountLabel, '50 QAR'),
                      _buildPriceDetailRow(AppLocalizations.of(context)!.taxLabel, '25 QAR'),
                      const Divider(),
                      _buildPriceDetailRow(AppLocalizations.of(context)!.totalAmount, '900 QAR'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                    ),
                    onPressed: () {
                      // TODO: Implement the logic for placing the order
                      _showOrderPlacementSuccessBottomSheet(context);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.placeOrder,
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryWhiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderCard({
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
          padding: const EdgeInsets.all(0.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: image!,
                width: 120,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price: ${price?.toInt()} QAR',
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppColor.primaryBlackColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(  isArabic == true ?productNameAr!:productName!,
                      style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.primaryGreyColor)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Qty :',style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.primaryGreyColor)),
                      const SizedBox(width: 5,),
                      Text(quantity!,style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColor.primaryBlackColor)),
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

  Widget _buildPriceDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.beVietnamPro(
                color: AppColor.primaryGreyColor,
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
          Text(value,
              style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
        ],
      ),
    );
  }

  void _showPaymentFailureBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset('assets/imgs/Group 1000002688.png'),
                    SvgPicture.asset('assets/icons/card-remove.svg'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Payment Failed',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'We aren’t able to process your payment. Please try again.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            // Set your desired corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back to Home',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Set your desired corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Try Again',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryWhiteColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showOrderPlacementSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),   // Adjust the radius as needed
                topRight: Radius.circular(20),  // Adjust the radius as needed
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/Vector.svg',color: AppColor.primaryGreyColor,),
                      SvgPicture.asset('assets/icons/bag-tick.svg'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(AppLocalizations.of(context)!.orderPlacedSuccessfully,
                    style: GoogleFonts.tenorSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(height: 8.0),
                SvgPicture.asset(
                  'assets/icons/divider.svg',

                  height: 15,
                  color: AppColor.primaryBlackColor,
                ),
                Text(
                  AppLocalizations.of(context)!.yourOrderPlacedSuccessfully,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Colors.black),
                              // Set your desired corner radius
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(AppLocalizations.of(context)!.trackOrder,
                              style: GoogleFonts.beVietnamPro(
                                  color: AppColor.primaryBlackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Set your desired corner radius
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                              AppLocalizations.of(context)!.backToHome,
                              style: GoogleFonts.beVietnamPro(
                                  color: AppColor.primaryWhiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
