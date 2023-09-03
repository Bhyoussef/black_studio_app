import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/drawer.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Category> categories = [
    Category('TOPS', 'assets/demo/pngegg (5) 1.png'),
    Category('BOTTOMS', 'assets/demo/pngegg (4) 1.png'),
    Category('DRESSES & SKIRT', 'assets/demo/pngegg (3) 1.png'),
    Category('CO-ORDS', 'assets/demo/pngegg (5) 1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBar(
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
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 92,
              decoration: BoxDecoration(
                color: AppColor.secondaryGreyColor,
                borderRadius: BorderRadius.circular(10),

              ),
              padding: const EdgeInsets.all(16),
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
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String imageURL;

  Category(this.name, this.imageURL);
}
