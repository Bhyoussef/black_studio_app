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
  List<String> brands = [
    'Apple',
    'Amazon',
    'Google',
    'Microsoft',
    'Facebook',
    'Samsung',
    'Toyota',
    'Nike',
    'Coca-Cola',
    'McDonald\'s',
    // Add more brands here
  ];

  List<String> filteredBrands = [];
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
    brands.sort();
    filteredBrands = List.from(brands);
  }

  void filterBrands(String query) {
    setState(() {
      filteredBrands = brands.where((brand) {
        final lowerCaseBrand = brand.toLowerCase();
        final lowerCaseQuery = query.toLowerCase();
        return lowerCaseBrand.contains(lowerCaseQuery);
      }).toList();
    });
  }

  void scrollToIndex(int index) {
    final scrollIndex = brands.indexWhere((brand) => brand.startsWith(alphabets[index]));
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
              height: 40,
              child: TextFormField(
                onChanged: filterBrands,
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: const Icon(Icons.search),
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
                      final brand = filteredBrands[index];
                      final firstLetter = brand.substring(0, 1).toUpperCase();
                      final isDividerNeeded =
                          index == 0 || firstLetter != filteredBrands[index - 1].substring(0, 1).toUpperCase();

                      return Column(
                        children: [
                          if (isDividerNeeded)
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              color: AppColor.secondaryGreyColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                        firstLetter,
                                        style: GoogleFonts.beVietnamPro(
                                          color: AppColor.primaryBlackColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ListTile(
                            title: Text(brand),
                          ),
                        ],
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
                              fontWeight: FontWeight.w500
                          ),
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
