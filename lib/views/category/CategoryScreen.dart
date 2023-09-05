import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

import 'ProductCategoryScreen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Category> categories = [
    Category('TOPS', 'assets/demo/pngegg (1) 1.png'),
    Category('BOTTOMS', 'assets/demo/pngegg (2) 1.png'),
    Category('DRESSES & SKIRT', 'assets/demo/pngegg (3) 1.png'),
    Category('CO-ORDS', 'assets/demo/image 25.png'),
    Category('PLAYSUITS', 'assets/demo/pngegg (4) 1 (1).png'),
    Category('JACKETS & BLAZER', 'assets/demo/image 26.png'),
    Category('SPORT', 'assets/demo/pngegg (5) 1.png'),
    Category('LINGERIE', 'assets/demo/image 28.png'),
    Category('SLEEPWEAR', 'assets/demo/pngwing 1.png'),
    Category('SWIMWEAR', 'assets/demo/pngegg (6) 1.png'),
    Category('SWEATERS & SWEATSHITS', 'assets/demo/image 27.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer:  DrawerWidget(),
      /*appBar: AppBar(
        leading: IconButton(
          icon:   SvgPicture.asset(
            'assets/menu/List.svg',
            color: AppColor.primaryBlackColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text('Category',style: GoogleFonts.beVietnamPro(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColor.primaryBlackColor
        ),),
      ),*/
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: (){
                Get.to(()=>ProductCategoryScreen(title:category.name));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 92,
                  decoration: BoxDecoration(
                    color: AppColor.secondaryGreyColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  padding: EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(category.name,style: GoogleFonts.beVietnamPro(
                            fontSize: 16,
                            fontWeight:FontWeight.normal,
                            color: AppColor.primaryBlackColor
                        )),
                      ),
                      const SizedBox(width: 16),
                      Image.asset(
                        category.imageURL,
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final String imageURL;

  Category(this.name, this.imageURL);
}
