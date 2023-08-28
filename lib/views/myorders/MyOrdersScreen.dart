import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'OrderSummaryScreen.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text(
          'My Orders',
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
          child:
              const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor),
        ),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            TabBar(
              indicatorColor: AppColor.primaryBlackColor,
              labelStyle: GoogleFonts.beVietnamPro(
                color: AppColor.primaryBlackColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              labelColor: AppColor.primaryBlackColor,
              unselectedLabelStyle: GoogleFonts.beVietnamPro(
                color: AppColor.primaryBlackColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              unselectedLabelColor: AppColor.primaryBlackColor.withOpacity(0.5),
              tabs: const [
                Tab(
                  text: 'Ongoing ',
                ),
                Tab(
                  text: 'Completed ',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                       Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Image(
                                  image: AssetImage('assets/imgs/box-tick.png'),
                                  width: 60,
                                  height: 60),
                              title: Text(
                                "Ongoing",
                                style: GoogleFonts.beVietnamPro(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("July 15, 2023",style: GoogleFonts.beVietnamPro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text('10:00 AM',style: GoogleFonts.beVietnamPro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      ColumnBuilder(
                        itemCount: dummyProducts.length,
                        itemBuilder: (context, index) {
                          final product=dummyProducts[index];
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: (){
                                Get.to(()=>const OrderSummary());
                                },
                              child: _buildOrderCard(
                                image:
                                AssetImage(product.imageAssets[0]),
                                status: 'Ongoing',
                                date: 'July 15, 2023',
                                time: '10:00 AM',
                                price: product.price.toString(),
                                productName: product.name,
                                quantity: product.quantity.toString(),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Track Order",style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,decoration: TextDecoration.underline,)
                                ,),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ListView(
                    children: [
                       Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image(
                                  image: AssetImage('assets/imgs/box-tick.png'),
                                  width: 60,
                                  height: 60),
                              title: Text(
                                "Delivered",
                                style: GoogleFonts.beVietnamPro(
                                    fontWeight: FontWeight.w500,
                                fontSize: 15),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("July 15, 2023", style: GoogleFonts.beVietnamPro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('10:00 AM', style: GoogleFonts.beVietnamPro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: AppColor.secondaryGreyColor,
                          thickness: 1,
                        ),
                      ),
                      ColumnBuilder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: dummyProducts.length,
                        itemBuilder: (context, index) {
                          final product = dummyProducts[index];
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: (){
                                Get.to(()=>const OrderSummary());
                              },
                              child: _buildOrderCard(
                                image:  AssetImage(product.imageAssets[0]),
                                status: 'Delivered',
                                date: 'July 12, 2023',
                                time: '9:45 AM',
                                price: product.price.toString(),
                                productName: product.name,
                                quantity: product.quantity.toString(),
                                showReview: true,
                                buttonText: 'Reorder',
                              ),
                            )
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Reorder",style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard({
    AssetImage? image,
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
              Image(image: image!, width: 60, height: 70,fit: BoxFit.cover,),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price: ${price}',  style:  GoogleFonts.beVietnamPro
                    (fontWeight: FontWeight.w700,
                      color: AppColor.primaryBlackColor,
                      fontSize: 14),),
                  const SizedBox(height: 8),

                  Text(productName!,
                      style:  GoogleFonts.beVietnamPro
                        (fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                      fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,),
                  const SizedBox(height: 8),
                  Text('Qty: $quantity',   style:  GoogleFonts.beVietnamPro
                    (fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                      fontSize: 14)),
                ],
              ),


            ],
          ),
        ),
      ],
    );
  }
}
