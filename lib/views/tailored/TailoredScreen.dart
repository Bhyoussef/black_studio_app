import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../colors/Colors.dart';

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
        Get.back();
      },
    ):IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          'Tailored',
          style: GoogleFonts.beVietnamPro(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
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
                      'Clear All',
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
                    'Apply',
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
                      Image.asset('assets/imgs/Line.png'),
                      Image.asset('assets/imgs/Length.png'),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 300,
                              height: 345,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/dress.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 180,
                              right: 100,
                              child: Column(
                                children: [
                                  Image.asset('assets/imgs/Line 50.png'),
                                  Image.asset('assets/imgs/Hip.png'),
                                ],
                              )),
                          Positioned(
                              top: 120,
                              right: 125,
                              child: Column(
                                children: [
                                  Image.asset('assets/imgs/Line 51.png'),
                                  Image.asset('assets/imgs/Bust.png'),
                                ],
                              )),
                          Positioned(
                              top: 16,
                              right: 120,
                              child: Row(
                                children: [
                                  Image.asset('assets/imgs/Arm.png'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Image.asset('assets/imgs/Vector 1.png'),
                                ],
                              )),
                          Positioned(
                              top: 1,
                              right: 70,
                              child: Row(
                                children: [
                                  Image.asset('assets/imgs/Line 52.png'),
                                ],
                              )),
                          Positioned(
                              top: -1,
                              right: 45,
                              child: Row(
                                children: [
                                  Image.asset('assets/imgs/Sleeve Length.png'),
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
                title: 'Length',
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              ListTileWithOptions(
                title: 'Bust',
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              ListTileWithOptions(
                title: 'Arm',
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              ListTileWithOptions(
                title: 'Hip',
                options: [
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  // Add more options as needed
                ],
              ),
              ListTileWithOptions(
                title: 'Sleeve Length',
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
                          labelText: 'Enter Length',
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
                          labelText: 'Enter Bust',
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
                          labelText: 'Enter Arm',
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
                          labelText: 'Enter Hip',
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
                          labelText: 'Enter Sleeve Length',
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
