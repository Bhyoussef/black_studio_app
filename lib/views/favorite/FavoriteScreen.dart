import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Favorite',style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 18
        ),),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading:  GestureDetector(
            onTap: (){
              Get.back();
            },
            child:const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildGridView(context,1)

          ],
        ),
      ),
    );
  }
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
        Image.network(
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
