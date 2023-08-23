import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/reviews/ReviewsScreen.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int selectedImageIndex = 0;
  final bagController = Get.find<CartController>();
  final RxInt bagItemCount = 0.obs;


  @override
  void initState() {
    super.initState();
  }
  void _showSizeDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return  SafeArea(
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColor.primaryGreyColor,
                                  width: .2,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                foregroundColor: Colors.black,
                                child: Icon(
                                  Icons.close,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text('Size Guide',style: GoogleFonts.beVietnamPro(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                        ),


                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        border: TableBorder.all(
                          color: AppColor.secondaryGreyColor,
                          width: 1.0,
                        ),

                        children: [
                          TableRow(
                            children: [
                              TableCell(child: Container(
                                height: 50,
                                color: AppColor.secondaryGreyColor,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Product'),
                                    Text('Size'),
                                  ],
                                ),
                              )), // Empty cell
                              const TableCell(
                                child: Center(
                                  child: Text('Bust'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('Length'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('Waist'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: const TableCell(
                                  child: Center(
                                    child: Text('XS'),
                                  ),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('30"'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('28"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: const TableCell(
                                  child: Center(
                                    child: Text('S'),
                                  ),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('36"'),
                                ),
                              ),
                              const TableCell(
                                child: Center(
                                  child: Text('30"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: TableCell(
                                  child: Center(
                                    child: Text('M'),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('38"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: TableCell(
                                  child: Center(
                                    child: Text('L'),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('38"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: TableCell(
                                  child: Center(
                                    child: Text('XL'),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('38"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: TableCell(
                                  child: Center(
                                    child: Text('XXL'),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('38"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                color: AppColor.secondaryGreyColor,
                                child: TableCell(
                                  child: Center(
                                    child: Text('XXXL'),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('34"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('38"'),
                                ),
                              ),
                              TableCell(
                                child: Center(
                                  child: Text('32"'),
                                ),
                              ),
                            ],
                          ),

                          // Add more TableRow widgets for other sizes
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));

      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Product Detail',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle share button press
            },
            icon: Image.asset(
              'assets/imgs/ShareNetwork.png',
              color: Colors.black,
            ),
          ),
          IconButton(

            constraints: const BoxConstraints(),
            onPressed: () => Get.to(() => BagScreen(isHome: true)),
            icon: Badge(
              label: Obx(
                () => Text(
                  Get.find<CartController>().items.length.toString(),
                ),
              ),
              child: Image.asset(
                'assets/imgs/Tote.png',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container with the main product image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 350, // Adjust the height as needed
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    widget.product.imageAssets[selectedImageIndex],
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // Container with the small list of images
              SizedBox(
                height: 100, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.product.imageAssets.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImageIndex = index;
                        });
                      },
                      child: Container(
                        width: 98, // Adjust the width as needed
                        margin: const EdgeInsets.symmetric(horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedImageIndex == index
                                ? Colors.transparent
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                widget.product.imageAssets[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                            if (selectedImageIndex == index)
                              Positioned(
                                bottom: -2,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/imgs/divider.png',
                                  height: 20,
                                  width: 98,
                                  color: Colors.black,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Category and Product Name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.category,
                      style: GoogleFonts.beVietnamPro(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.product.name,
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Rating and Number of Ratings
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.primaryGreyColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '5.0',
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 1,
                            height: 15,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5 ratings',
                            style: GoogleFonts.beVietnamPro(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Product Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${widget.product.price} QAR',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Add to Cart Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
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
                          bagController.addToCart(widget.product);
                          Get.snackbar('Success', 'Product added to cart',
                              snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.green,
                          colorText: CupertinoColors.white);
                        },
                        child: Text('Add to Cart',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/imgs/Heart.png'))
                  ],
                ),
              ),
              // Divider
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: AppColor.secondaryGreyColor,
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('SELECT SIZE',style: GoogleFonts.tenorSans(
                         color: AppColor.primaryBlackColor,
                         fontSize: 15,
                         fontWeight: FontWeight.w400)),
                    TextButton(onPressed: (){

                      _showSizeDialog(context);
                    },
                        child:  Text('Edit Size',style:GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor
                              ,fontWeight: FontWeight.w500,
                          fontSize: 16

                        ),))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PRODUCT DETAILS',
                  style: GoogleFonts.tenorSans(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
              // Divider
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: AppColor.secondaryGreyColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'REVIEWS',
                  style: GoogleFonts.tenorSans(
                      fontSize: 12, fontWeight: FontWeight.w400),
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
                        Get.to(() => ReviewsScreen());
                      },
                      child: Text(
                        'View All Reviews',
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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
}
