import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class BrandScreen extends StatefulWidget {
  final bool? isHome;
  const BrandScreen({super.key, this.isHome});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map<String, String>> brands = [
    {'name': 'Puma', 'image': 'assets/demo/puma-logo 1.svg'},
    {'name': 'Zara', 'image': 'assets/demo/zara-logo-1 1.svg'},
    {'name': 'Cucci', 'image': 'assets/demo/gucci-logo-brandlogos.net_9cd06kvtk 1.svg'},
    {'name': 'Nike', 'image': 'assets/demo/Group (2).svg'},
    {'name': 'H & M', 'image': 'assets/demo/h-m 1.svg'},
    {'name': 'Van heusen', 'image': 'assets/demo/Group (1).svg'},
    {'name': 'Tommy Hilfiger', 'image': 'assets/demo/Vector (1).svg'},

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
        leading: widget.isHome == true
            ? IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ): IconButton(
          icon:  SvgPicture.asset(
            'assets/menu/List.svg',
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
            fontSize: 18
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: AppColor.primaryBlackColor,
                onChanged: filterBrands,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: AppColor.primaryBlackColor
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColor.primaryGreyColor,
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
                        padding:  EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                width: 65,
                                height: 28,
                                child: Center(
                                  child: SvgPicture.asset(
                                    brandImage!,
                                  ),
                                ),
                              ),
                              title: Text(brandName!,style:GoogleFonts.beVietnamPro(
                                  color: AppColor.primaryBlackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),),
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
