import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        title: Text('Feeds',style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontWeight: FontWeight.w600,
            fontSize: 20
        ),),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading:  GestureDetector(
            onTap: (){
              Get.back();
            },
            child:const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,)),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset('assets/imgs/Feed.png'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('New Product',style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    )),
                  ),
                  subtitle:Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Nike Air Zoom Pegasus 36 Miami - Special For your Activity',style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryGreyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    )),
                  ),
                  onTap: (){
                  },
                ),

              ],
            )


          ],
        ),
      ) ,
    );
  }
}
