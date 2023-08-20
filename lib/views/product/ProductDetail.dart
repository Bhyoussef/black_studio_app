import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/reviews/ReviewsScreen.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int selectedImageIndex = 0;
  final List<String> smallImages = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

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
            onPressed: () {
            Get.to(()=>BagScreen(isHome:true));
            },
            icon: Image.asset(
              'assets/imgs/Tote.png',
              color: Colors.black,
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
                  child: Image.network(
                    smallImages[selectedImageIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              // Container with the small list of images
              SizedBox(
                height: 100, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: smallImages.length,
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
                              child: Image.network(
                                smallImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (selectedImageIndex == index)
                              Positioned(
                                bottom: 0,
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
                      'Category',
                      style: GoogleFonts.beVietnamPro(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Product Name',
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
                  '2000 QAR',
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
                    // TO DO
                        },
                        child: Text('Add to Cart',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                        Get.to(()=>ReviewsScreen());
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
