import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/bag/BagScreen.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/views/reviews/ReviewsScreen.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'package:share/share.dart';

import 'ImageGallery.dart';
import 'componement/BestOffersSection.dart';
import 'componement/DeliveryOption.dart';
import 'componement/ProductDetailSection.dart';
import 'componement/ReviewsSection.dart';
import 'componement/SizeSection.dart';

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
  List<Color> colorOptions = [
    Colors.purple,
    Colors.pink,
  ];
  int selectedImageIndex = 0;
  final bagController = Get.find<CartController>();
  final RxInt bagItemCount = 0.obs;

  List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  List<double> prices = [200, 250, 300, 350, 400];
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
  }

  void _showSizeDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const SizeSection();
      },
    );
  }

  void _shareProduct() {
    final String productName = widget.product.name;
    final String productImageUrl = widget.product.imageAssets[0];

    Share.share(
      'Check out this amazing product: $productName',
      subject: 'Product Share',
      sharePositionOrigin: Rect.fromLTWH(0, 0, 100, 100),
    );
  }

  void _showImageGalleryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ImageGalleryDialog(
          imageAssets: widget.product.imageAssets,
          initialIndex: selectedImageIndex,
        );
      },
    );
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
          'Product Detail',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _shareProduct,
            icon: SvgPicture.asset(
              'assets/menu/ShareNetwork.svg',
              color: AppColor.primaryGreyColor,
            ),
          ),
          IconButton(
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HiddenDrawer(initialIndex: 2,isNotHome: true,),
                ),
              );
            },
            icon: Badge(
              label: Obx(
                () => Text(
                  Get.find<CartController>().items.length.toString(),
                ),
              ),
              child: SvgPicture.asset(
                'assets/menu/Tote.svg',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container with the main product image
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 400, // Adjust the height as needed
                        width: 500,
                        child: Image.network(
                          widget.product.imageAssets[selectedImageIndex],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 5,
                          child: GestureDetector(
                              onTap: () {
                                _showImageGalleryDialog(context);
                              },
                              child: SvgPicture.asset(
                                  "assets/icons/Group 204.svg")))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                          width: 80, // Adjust the width as needed
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
                              Image.network(
                                widget.product.imageAssets[index],
                                fit: BoxFit.fill,
                                height: 77,
                                width: 77,
                              ),
                              if (selectedImageIndex == index)
                                Positioned(
                                  bottom: 12,
                                  left: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                    'assets/icons/2.svg',
                                    height: 15,
                                    color: AppColor.primaryBlackColor,
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
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.product.category.toUpperCase(),
                        style: GoogleFonts.tenorSans(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.product.name,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'QAR ${widget.product.price.toInt()}',
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primaryBlackColor),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'inclusive of all taxes',
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.thirdGreyColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Add to Cart Button
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.black,
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
                      ),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/drawer/Heart.svg',
                              height: 28,
                              width: 28,
                              color: AppColor.primaryGreyColor,
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colorOptions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: buildColorOption(colorOptions[index], true),
                        );
                      },
                    ),
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
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SELECT SIZE',
                          style: GoogleFonts.tenorSans(
                              color: AppColor.primaryBlackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      TextButton(
                          onPressed: () {
                            _showSizeDialog(context);
                          },
                          child: Text(
                            'Edit Size',
                            style: GoogleFonts.beVietnamPro(
                                color: AppColor.primaryBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    direction: Axis.horizontal,
                    children: List.generate(sizes.length, (index) {
                      final size = sizes[index];
                      final price = prices[index];
                      return Container(
                        width: 80,
                        height: 60,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.primaryWhiteColor,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: isSelected
                                ? AppColor.thirdGreyColor
                                : AppColor.thirdGreyColor,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              size,
                              style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: isSelected
                                    ? AppColor.primaryBlackColor
                                    : AppColor.primaryBlackColor,
                              ),
                            ),
                            Text(
                              '\QAR ${price.toInt()}',
                              style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: isSelected
                                    ? AppColor.primaryGreyColor
                                    : AppColor.primaryGreyColor,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    color: AppColor.secondaryGreyColor,
                  ),
                ),
                //DELIVERY OPTIONS
                const DeleveryOption(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    color: AppColor.secondaryGreyColor,
                  ),
                ),
                //best offers
                const BestOffesrSection(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 3,
                    height: 1,
                    color: AppColor.secondaryGreyColor,
                  ),
                ),


                //Product Details
                const ProductDetailSection(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'REVIEWS',
                        style: GoogleFonts.tenorSans(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset('assets/icons/star.svg'),
                    ],
                  ),
                ),

                //Reviews
                const ReviewsSection(),

                Padding(
                    padding: const EdgeInsets.all(0.0),
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
                          Get.to(() => const ReviewsScreen());
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
      ),
    );
  }
}

Widget buildColorOption(Color color, bool isSelected) {
  return GestureDetector(
    onTap: () {
      // Handle color selection
    },
    child: Container(
        padding: EdgeInsets.all(2),
        height: 50,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? AppColor.primaryBlackColor
                : AppColor.primaryBlackColor,
            width: 1,
          ),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        )),
  );
}
