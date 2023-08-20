import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';

class ChekoutScreen extends StatelessWidget {
  const ChekoutScreen({super.key});

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
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ColumnBuilder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: _buildOrderCard(
                        image: NetworkImage('https://via.placeholder.com/100'),
                        status: 'Ongoing',
                        date: 'July 15, 2023',
                        time: '10:00 AM',
                        price: 'QAR 50.00',
                        productName: 'Product 1',
                        quantity: '2',
                        showReview: false,
                        buttonText: 'Track Order',
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
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'SHIPPING ADDRESS',
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
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
                    Text('P.O.Box 1618, Shaksy Bldg, Al Romailah St'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 15),
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
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'PAYMENT METHOD',
                        style: GoogleFonts.tenorSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('PayPal',  style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                leading: Icon(Icons.payment),
                onTap: () {
                  _showOrderPlacementSuccessBottomSheet(context);
                },
              ),
              ListTile(
                title: Text('Apple Pay', style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
                leading: Icon(Icons.payment),
                onTap: () {
                  _showPaymentFailureBottomSheet(context);
                },
              ),
              ListTile(
                title: Text('Credit/Debit Card', style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
                leading: Icon(Icons.payment),
                onTap: () {
                  _showPaymentFailureBottomSheet(context);
                },
              ),
              ListTile(
                title: Text('Bank Transfer', style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
                leading: Icon(Icons.payment),
                onTap: () {
                  _showPaymentFailureBottomSheet(context);
                },
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
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildPriceDetailRow('Total', 'QAR 100.00'),
                      _buildPriceDetailRow('Discount', '-QAR 10.00'),
                      _buildPriceDetailRow('Coupon Discount', '-QAR 5.00'),
                      _buildPriceDetailRow('Tax', 'QAR 2.50'),
                      Divider(),
                      _buildPriceDetailRow('Total Payment', 'QAR 87.50'),
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
    NetworkImage? image,
    String? status,
    String? date,
    String? time,
    String? price,
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
                width: 100,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName!, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  Text('Price: $price'),
                  SizedBox(height: 10,),
                  Text('Quantity: $quantity'),
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
                fontSize: 14),
          ),
          Text(value,style:GoogleFonts.beVietnamPro(
              color: AppColor.primaryGreyColor,
              fontWeight: FontWeight.w400,
              fontSize: 12)),
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
                    Image.asset('assets/imgs/card-remove.png'),
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
                            borderRadius: BorderRadius.circular(
                                8),
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
                    Image.asset('assets/imgs/Group 1000002688.png'),
                    Image.asset('assets/imgs/bag.png'),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Order Placed Successfully',
                  style: GoogleFonts.tenorSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )
              ),
              SizedBox(height: 8.0),
              Image.asset(
                'assets/imgs/divider.png',
                width: 150,
                height: 50,
                color: AppColor.primaryBlackColor,
              ),
              Text(
                'Your Order has been successfully placed! For more details, go to My Orders.', style: GoogleFonts.beVietnamPro(
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
                            borderRadius: BorderRadius.circular(
                                8),
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
