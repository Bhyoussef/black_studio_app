import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';

class AllProduct extends StatelessWidget {
  final String? title;
  const AllProduct({super.key,  this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.primaryWhiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primaryWhiteColor,
          title: Text(title!,style:  GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48), // Height of the TabBar
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.secondaryGreyColor, // Customize the border color
                    width: 1.0, // Customize the border width
                  ),
                  top: BorderSide(
                    color: AppColor.secondaryGreyColor, // Customize the border color
                    width: 1.0, // Customize the border width
                  ),
                ),
              ),
              child: TabBar(
                tabs: [
                  Tab(text: 'Ready to Wear'),
                  Tab(text: 'Tailored'),
                ],
                labelStyle: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primaryBlackColor,
                ),
                labelColor: AppColor.primaryBlackColor,
                unselectedLabelStyle: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryGreyColor,
                ),
                indicatorColor: AppColor.primaryBlackColor,
              ),
            ),
          ),



        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0.0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1254 Items',  style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),),
                      MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          _showSortByDialog(context);
                        },
                        child: Row(
                          children: [
                            Text(
                              'Sort by',
                              style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColor.primaryBlackColor,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    buildGridView(context,1),
                    buildGridView(context,2)
                  ],

                )),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildGridView(BuildContext context,int tabNumber) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
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
    );
  }

  Widget buildProductCard(Product product) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Image.asset(
            product.imageAssets[0],
            height: 180,
            width: 150,
            fit: BoxFit.cover,
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
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  product.category,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
  void _showSortByDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Sort By',
            style: GoogleFonts.beVietnamPro(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Price: High to Low'),
                onTap: () {
                  // Handle sort by price: high to low
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Price: Low to High'),
                onTap: () {
                  // Handle sort by price: low to high
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('New Arrival'),
                onTap: () {
                  // Handle sort by new arrival
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Best Seller'),
                onTap: () {
                  // Handle sort by best seller
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
