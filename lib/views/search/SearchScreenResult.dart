import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/model/ProductModel.dart';
import 'package:linkia_ecommerce/views/product/ProductDetail.dart';
import 'package:linkia_ecommerce/views/search/FilterScreen.dart';

class SearchScreenResult extends StatefulWidget {
  const SearchScreenResult({Key? key}) : super(key: key);

  @override
  State<SearchScreenResult> createState() => _SearchScreenResultState();
}

class _SearchScreenResultState extends State<SearchScreenResult> {



  void _showFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const FilterScreen();
      },
    );
  }

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
                      height: 50,
                      child: TextFormField(
                        cursorColor: AppColor.primaryBlackColor,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColor.primaryGreyColor,
                          ),

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
                          fontSize: 12,
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
                            'Category',
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                              color: AppColor.primaryGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                    MaterialButton(
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                        //_showFilterModal(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Size',
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                    MaterialButton(
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                       Get.to(()=>FilterScreen());

                      },
                      child: Row(
                        children: [
                          Text(
                            'Filter',
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                itemCount: dummyProducts.length,
                itemBuilder: (context, index) {
                 Product product=dummyProducts[index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() =>  ProductDetail(product: product,));
                      },
                      child: buildProductCard(product),
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
            fit: BoxFit.fill,
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
                  '${product.price.toInt()} QAR',
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





