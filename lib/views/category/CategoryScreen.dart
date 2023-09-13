import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'ProductCategoryScreen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Category> categories = [
    Category('Tops', 'assets/category/pngegg (1) 1.png', 'قمصان وبلايز'),
    Category('Bottoms', 'assets/category/pngegg (2) 1.png', 'السراويل والبنطلونات'),
    Category('Dresses & Skirts', 'assets/category/pngegg (3) 1 (1).png', 'فساتين وتنانير'),
    Category('Co-ords', 'assets/category/image 25.png', 'أزياء متجانسة'),
    Category('Playsuits', 'assets/category/pngegg (4) 1 (1).png', 'أفرولات'),
    Category('Jackets & Blazers', 'assets/category/image 26.png', 'جواكت وسترات'),
    Category('Sportswear', 'assets/category/pngegg (5) 1 (1).png', 'ملابس رياضية'),
    Category('Lingerie', 'assets/category/image 28.png', 'ملابس داخلية'),
    Category('Sleepwear', 'assets/category/pngwing 1.png', 'ملابس نوم'),
    Category('Swimwear', 'assets/category/pngegg (6) 1.png', 'ملابس السباحة'),
    Category('Sweaters & Sweatshirts', 'assets/category/image 27.png', 'كنزات وسترات رياضية'),


  ];

  @override
  Widget build(BuildContext context) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      //drawer:  DrawerWidget(),
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
                Get.to(()=>ProductCategoryScreen(title:isArabic?category.nameAr:category.name));
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
                        child: Text(isArabic?category.nameAr:category.name,style: GoogleFonts.beVietnamPro(
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
  final String nameAr;

  Category(this.name, this.imageURL, this.nameAr);
}
