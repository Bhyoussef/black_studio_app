import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/HiddenDrawerMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TailoredScreen extends StatefulWidget {
  final bool? isHome;
  const TailoredScreen({super.key, this.isHome});

  @override
  State<TailoredScreen> createState() => _TailoredScreenState();
}

class _TailoredScreenState extends State<TailoredScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: widget.isHome == true
            ? IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.offAll(() => HiddenDrawer(initialIndex: 0,));
          },
        )
            : IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.tailored, // Translated 'Tailored'
          style: GoogleFonts.beVietnamPro(
            color: AppColor.primaryBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primaryWhiteColor,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.primaryBlackColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      formKey.currentState!.reset();
                    },
                    child: Text(
                      AppLocalizations.of(context)!.clearAll, // Translated 'Clear All'
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColor.primaryBlackColor,
                  height: 60,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)!.apply, // Translated 'Apply'
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Line 53.svg'),
                      SvgPicture.asset(
                        'assets/icons/Length.svg',
                        color: AppColor.primaryBlackColor,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/icons/Group (1).svg'),
                          ),
                          Positioned(
                              top: 180,
                              right: 72,
                              child: Column(
                                children: [
                                  SvgPicture.asset('assets/icons/Line 50.svg'),
                                  SvgPicture.asset('assets/icons/Hip.svg'),
                                ],
                              )),
                          Positioned(
                              top: 60,
                              right: 96,
                              child: Column(
                                children: [
                                  SvgPicture.asset('assets/icons/Line 51.svg'),
                                  SvgPicture.asset('assets/icons/Bust.svg'),
                                ],
                              )),
                          Positioned(
                              top: 16,
                              right: 90,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/Arm.svg'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  SvgPicture.asset('assets/icons/Vector 1.svg'),
                                ],
                              )),
                          Positioned(
                              top: 1,
                              right: 35,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/Line 52.svg'),
                                ],
                              )),
                          Positioned(
                              top: -1,
                              right: 5,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/Sleeve Length.svg'),
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.length, // Translated 'Length'
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.bust, // Translated 'Bust'
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.arm, // Translated 'Arm'
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.hip, // Translated 'Hip'
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.sleeveLength, // Translated 'Sleeve Length'
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.enterLength, // Translated 'Enter Length'
                          labelStyle: GoogleFonts.beVietnamPro(
                            fontSize: 15,
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.enterBust, // Translated 'Enter Bust'
                          labelStyle: GoogleFonts.beVietnamPro(
                            fontSize: 15,
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.enterArm, // Translated 'Enter Arm'
                          labelStyle: GoogleFonts.beVietnamPro(
                            fontSize: 15,
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.enterHip, // Translated 'Enter Hip'
                          labelStyle: GoogleFonts.beVietnamPro(
                            fontSize: 15,
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.enterSleeveLength, // Translated 'Enter Sleeve Length'
                          labelStyle: GoogleFonts.beVietnamPro(
                            fontSize: 15,
                            color: AppColor.primaryGreyColor,
                            fontWeight: FontWeight.w400,
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

class ListTileWithOptions extends StatefulWidget {
  final String title;
  final List<String> options;

  const ListTileWithOptions({
    required this.title,
    required this.options,
  });

  @override
  _ListTileWithOptionsState createState() => _ListTileWithOptionsState();
}

class _ListTileWithOptionsState extends State<ListTileWithOptions> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.title,
            style: GoogleFonts.beVietnamPro(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColor.primaryBlackColor),
          ),
          trailing: _isExpanded
              ? Icon(Icons.arrow_drop_up)
              : Icon(Icons.arrow_drop_down),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded)
          Column(
            children: widget.options.map((option) {
              return ListTile(
                title: Text(option),
                onTap: () {
                  // Handle option selection
                },
              );
            }).toList(),
          ),
      ],
    );
  }
}
