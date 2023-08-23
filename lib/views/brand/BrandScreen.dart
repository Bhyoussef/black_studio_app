import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({super.key});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map<String, String>> brands = [
    {'name': 'Urbanic', 'image': 'assets/demo/image 19 (1).png'},
    {'name': 'Puma', 'image': 'assets/demo/puma-logo 1 (1).png'},
    {'name': 'Zara', 'image': 'assets/demo/zara-logo-1 1 (1).png'},
    // Add other brands and their images here
  ];

  List<Map<String, String>> filteredBrands = [];
  final ScrollController _scrollController = ScrollController();
  List<String> alphabets = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
    'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
    'U', 'V', 'W', 'X', 'Y', 'Z'
  ];

  @override
  void initState() {
    super.initState();
    // Sort the brands alphabetically
    brands.sort((a, b) => a['name']!.compareTo(b['name']!));
    filteredBrands = List.from(brands);
  }

  void filterBrands(String query) {
    setState(() {
      filteredBrands = brands.where((brandData) {
        final lowerCaseBrand = brandData['name']!.toLowerCase();
        final lowerCaseQuery = query.toLowerCase();
        return lowerCaseBrand!.contains(lowerCaseQuery);
      }).toList();
    });
  }

  void scrollToIndex(int index) {
    final scrollIndex = brands.indexWhere(
            (brandData) => brandData['name']!.startsWith(alphabets[index])
    );
    if (scrollIndex != -1) {
      _scrollController.animateTo(
        scrollIndex.toDouble() * 56.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),

      appBar: AppBar(
        backgroundColor: AppColor.primaryWhiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset(
            'assets/imgs/List.png',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text(
          'Brands',
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: AppColor.primaryBlackColor,
                onChanged: filterBrands,
                decoration: InputDecoration(
                  //labelText: 'Search',
                  labelStyle: TextStyle(
                    color: AppColor.primaryBlackColor
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColor.primaryBlackColor,
                  ),
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: filteredBrands.length,
                    itemBuilder: (context, index) {
                      final brandData = filteredBrands[index];
                      final brandName = brandData['name'];
                      final brandImage = brandData['image'];

                      final firstLetter = brandName?.substring(0, 1).toUpperCase();
                      final isDividerNeeded =
                          index == 0 ||
                              firstLetter !=
                                  filteredBrands[index - 1]['name']?.substring(0, 1).toUpperCase();

                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                brandImage!,
                                width: 40,
                                height: 40,
                              ),
                              title: Text(brandName!),
                            ),
                            const Divider(
                              height: 1,
                              thickness: 0.09,
                              color: AppColor.primaryGreyColor,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: 30,
                  color: AppColor.primaryWhiteColor,
                  child: ListView.builder(
                    itemCount: alphabets.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          alphabets[index],
                          style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryBlackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        onTap: () {
                          scrollToIndex(index);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
