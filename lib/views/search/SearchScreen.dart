import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkia_ecommerce/views/main/MainScreen.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'SearchScreenResult.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      // Handle the selected image from the camera
    }
  }

  void _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    flex: 5,
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: AppColor.primaryBlackColor,
                        controller: _searchController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColor.primaryGreyColor,
                          ),
                          hintText: AppLocalizations.of(context)!.searchHint,
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
                    child: TextButton(
                      onPressed: () {
                        Get.offAll(() => HiddenDrawer(initialIndex: 0,));
                      },
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 12,
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Add other widgets here
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.secondaryGreyColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.searchWithImage,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      AppLocalizations.of(context)!.useImageToFindItems,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          decoration: BoxDecoration(
                            color: AppColor.primaryBlackColor,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Camera.svg',
                                fit: BoxFit.contain,
                                height: 30,
                                width: 58,
                                color: AppColor.primaryWhiteColor,
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                AppLocalizations.of(context)!.camera,
                                style: GoogleFonts.beVietnamPro(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 5,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          decoration: BoxDecoration(
                            color: AppColor.primaryBlackColor,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Image.svg',
                                fit: BoxFit.contain,
                                height: 30,
                                width: 58,
                                color: AppColor.primaryWhiteColor,
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                AppLocalizations.of(context)!.image,
                                style: GoogleFonts.beVietnamPro(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
