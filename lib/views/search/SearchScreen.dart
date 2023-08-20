import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';

import 'SearchScreenResult.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        cursorColor: AppColor.primaryBlackColor,
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'What can we help you find ?',
                          filled: true,
                          fillColor: AppColor.secondaryGreyColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onTap: () {
                          Get.to(() => const SearchScreenResult());
                        },

                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                      child: TextButton(onPressed: (){
                        Get.to(()=>MainScreen());
                      },
                        child: Text('Cancel',style: GoogleFonts.beVietnamPro(
                          fontSize: 10,
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w400
                        ),),))
                ],
              ),
              // Add other widgets here
            ],
          ),
        ),
      ),
    );
  }
}
