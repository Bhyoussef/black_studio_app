import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'Order Summary',
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
            Get.back();
          },
          child: const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColor.secondaryGreyColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order № : 1947034",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("July 15, 2023"),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "IW3475453455",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Delivered",
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.green,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ColumnBuilder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const OrderSummary());
                      },
                      child: _buildOrderCard(
                        image: const NetworkImage('https://via.placeholder.com/100'),
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: AppColor.secondaryGreyColor,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'ORDER INFORMATION',
                      style: GoogleFonts.tenorSans(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Shipping Address',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                trailing: Text('1234 Main St, City, Country',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                )),
              ),
              ListTile(
                title: Text('Payment Method',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                trailing: Text('Credit Card',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                )),
              ),
              ListTile(
                title: Text('Delivery Method',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                trailing: Text('Standard Delivery',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                )),
              ),
              ListTile(
                title: Text('Discount',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                trailing: Text('QAR 10.00',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                )),
              ),
              ListTile(
                title: Text(
                  'Total Payment',  style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )
                ),
                trailing: Text(
                  'QAR 40.00',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.primaryBlackColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MaterialButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Reorder',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),

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
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10,),
                  Text('Price: $price'),
                  const SizedBox(height: 10,),
                  Text('Quantity: $quantity'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
