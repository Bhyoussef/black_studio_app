import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';

class SearchScreenResult extends StatelessWidget {
  const SearchScreenResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    flex: 6,
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        cursorColor: AppColor.primaryBlackColor,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: AppColor.secondaryGreyColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const SearchScreenResult());
                    },
                    child: Text(
                      'Search',
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 10,
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.primaryWhiteColor,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColor.primaryWhiteColor,
                      offset: Offset(0, 2),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                        _showProductDialog(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Product',
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
                            Icons.arrow_downward,
                            color: AppColor.primaryBlackColor,
                            size: 15,
                          )
                        ],
                      ),
                    ),
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
                            Icons.arrow_downward,
                            color: AppColor.primaryBlackColor,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                        _showFilterModal(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Filter',
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
                            Icons.filter_list,
                            color: AppColor.primaryBlackColor,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ProductDetail());
                      },
                      child: buildProductCard(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard() {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Image.network(
            'https://via.placeholder.com/100',
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
                  'Product Name',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Category',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '200 QAR',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 16,
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

  void _showFilterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                children: [
                  Text(
                    'Price Range',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Slider(
                    activeColor: AppColor.primaryBlackColor,
                    inactiveColor: AppColor.secondaryGreyColor,
                    value: 0.0,
                    // Add your slider configuration here
                    onChanged: (double value) {
                      // Handle slider value change
                    },
                  ),
                ],
              ),
            ),
            // Category Wrap
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    children: [
                      FilterChip(
                        label: const Text('Category'),
                        onSelected: (bool selected) {
                          // Handle chip selection
                        },
                      ),
                      FilterChip(
                        label: const Text('Category '),
                        onSelected: (bool selected) {
                          // Handle chip selection
                        },
                      ),
                      FilterChip(
                        label: const Text('Category '),
                        onSelected: (bool selected) {
                          // Handle chip selection
                        },
                      ),
                      // Add more FilterChip widgets as needed
                    ],
                  ),
                ],
              ),
            ),
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
                        foregroundColor: Colors.white, backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Set your desired corner radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Clear',
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
                        foregroundColor: Colors.white, backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Set your desired corner radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Apply',
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
        );
      },
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

  void _showProductDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Product',
            style: GoogleFonts.beVietnamPro(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Best Seller'),
                onTap: () {
                  // Handle sort by best seller
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
            ],
          ),
        );
      },
    );
  }
}
