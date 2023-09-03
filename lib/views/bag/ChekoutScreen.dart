import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';

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
          'Chekout',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ColumnBuilder(
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  final product = widget.products[index];

                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: _buildOrderCard(
                        image: AssetImage(product.product.imageAssets[0]),
                        price: product.product.price,
                        productName: product.product.name,
                        quantity: product.product.quantity.toString(),
                      ),
                    ),
                  );
                },
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'SHIPPING ADDRESS',
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
                padding: const EdgeInsets.all(8.0),
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
                      icon: Icon(Icons.arrow_forward_ios, size: 20,color: AppColor.primaryGreyColor,),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'PAYMENT METHOD',
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
                      title: Text('PayPal',
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
                      title: Text('Apple Pay',
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
                      title: Text('Credit/Debit Card',
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
                      title: Text('Bank Transfer',
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
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PRICE DETAILS',
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildPriceDetailRow('Total', ' 1000 QAR'),
                      _buildPriceDetailRow('Discount', '-100 QAR'),
                      _buildPriceDetailRow('Coupon Discount', '50 QAR'),
                      _buildPriceDetailRow('Tax', '25 QAR'),
                      Divider(),
                      _buildPriceDetailRow('Total Payment', '900 QAR'),
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
                      'Place Order',
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
    AssetImage? image,
    String? status,
    String? date,
    String? time,
    double? price,
    String? productName,
    String? quantity,
    bool? showReview,
    String? buttonText,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
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
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price: ${price?.toInt()}',
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppColor.primaryBlackColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(productName!,
                      style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.primaryGreyColor)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Qty:',style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.primaryGreyColor)),
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
          padding: EdgeInsets.all(16.0),
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
              SizedBox(height: 16.0),
              Text(
                'Payment Failed',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'We aren’t able to process your payment. Please try again.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
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
        return Container(
          padding: EdgeInsets.all(16.0),
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
              SizedBox(height: 16.0),
              Text('Order Placed Successfully',
                  style: GoogleFonts.tenorSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 8.0),
              SvgPicture.asset(
                'assets/icons/divider.svg',

                height: 15,
                color: AppColor.primaryBlackColor,
              ),
              Text(
                'Your Order has been successfully placed! For more details, go to My Orders.',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
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
                            side: BorderSide(color: Colors.black),
                            // Set your desired corner radius
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Track Order',
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
                        child: Text('Back to Home',
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
}
