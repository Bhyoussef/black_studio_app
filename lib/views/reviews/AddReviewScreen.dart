import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  int _rating = 0;
  int _size = 1;
  int _comfort = 1;
  int _quality = 1;
  List<File> _selectedImages = [];

  void _setRating(int value) {
    setState(() {
      _rating = value;
    });
  }

  void _setSize(int value) {
    setState(() {
      _size = value;
    });
  }

  void _setComfort(int value) {
    setState(() {
      _comfort = value;
    });
  }

  void _setQuality(int value) {
    setState(() {
      _quality = value;
    });
  }

  Future<void> _getImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImages.add(File(pickedFile.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          'Whrite Review',
          style: GoogleFonts.beVietnamPro(
            color: Colors.black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      _rating >= 1 ? Icons.star : Icons.star_outline,
                      size: 48,
                      color: Colors.black,
                    ),
                    onPressed: () => _setRating(1),
                  ),
                  IconButton(
                    icon: Icon(
                      _rating >= 2 ? Icons.star : Icons.star_outline,
                      size: 48,
                      color: Colors.black,
                    ),
                    onPressed: () => _setRating(2),
                  ),
                  IconButton(
                    icon: Icon(
                      _rating >= 3 ? Icons.star : Icons.star_outline,
                      size: 48,
                      color: Colors.black,
                    ),
                    onPressed: () => _setRating(3),
                  ),
                  IconButton(
                    icon: Icon(
                      _rating >= 4 ? Icons.star : Icons.star_outline,
                      size: 48,
                      color: Colors.black,
                    ),
                    onPressed: () => _setRating(4),
                  ),
                  IconButton(
                    icon: Icon(
                      _rating >= 5 ? Icons.star : Icons.star_outline,
                      size: 48,
                      color: Colors.black,
                    ),
                    onPressed: () => _setRating(5),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: AppColor.secondaryGreyColor,
                ),
              ),
              const SizedBox(height: 8),
              Text("Customer Rating",
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/size.png',
                    width: 16,
                  ),
                  const SizedBox(width: 8),
                  Text("Size:",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _setSize(1),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _size == 1
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "1",
                        style: TextStyle(
                            color: _size == 1
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setSize(2),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _size == 2
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "2",
                        style: TextStyle(
                            color: _size == 2
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setSize(3),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _size == 3
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "3",
                        style: TextStyle(
                            color: _size == 3
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setSize(4),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _size == 4
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "4",
                        style: TextStyle(
                            color: _size == 4
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setSize(5),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _size == 5
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            color: _size == 5
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Runs Small",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("Runs Large",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/comfort.png',
                    width: 16,
                  ),
                  const SizedBox(width: 8),
                  Text("Comfort:",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _setComfort(1),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _comfort == 1
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "1",
                        style: TextStyle(
                            color: _comfort == 1
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setComfort(2),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _comfort == 2
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "2",
                        style: TextStyle(
                            color: _comfort == 2
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setComfort(3),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _comfort == 3
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "3",
                        style: TextStyle(
                            color: _comfort == 3
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setComfort(4),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _comfort == 4
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "4",
                        style: TextStyle(
                            color: _comfort == 4
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setComfort(5),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _comfort == 5
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            color: _comfort == 5
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Uncomfortable",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("Comfortable",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/quality.png',
                    width: 16,
                  ),
                  const SizedBox(width: 8),
                  Text("Quality:",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => _setQuality(1),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _quality == 1
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "1",
                        style: TextStyle(
                            color: _quality == 1
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setQuality(2),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _quality == 2
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "2",
                        style: TextStyle(
                            color: _quality == 2
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setQuality(3),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _quality == 3
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "3",
                        style: TextStyle(
                            color: _quality == 3
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setQuality(4),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _quality == 4
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "4",
                        style: TextStyle(
                            color: _quality == 4
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setQuality(5),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5,
                      height: 30,
                      color: _quality == 5
                          ? AppColor.primaryBlackColor
                          : AppColor.fourthGreyColor,
                      child: Center(
                          child: Text(
                        "5",
                        style: TextStyle(
                            color: _quality == 5
                                ? AppColor.primaryWhiteColor
                                : AppColor.primaryGreyColor),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Poor",
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text("Great",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Divider(
                height: 10,
                thickness: 3,
                color: AppColor.fourthGreyColor,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: _getImageFromGallery,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/icons/rectangle.png',
                          width: 50,
                          height: 50,
                        ),
                        const Positioned(
                            left: 13,
                            top: 13,
                            child: Icon(
                              Icons.add,
                              size: 25,
                            ))
                      ],
                    ),
                  ),
                  _selectedImages.isEmpty
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Upload Images",
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.primaryBlackColor)),
                              SizedBox(height: 10),
                              Text("Upload Png,jpg(max 15mb)",
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.primaryGreyColor)),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 110,
                          width: MediaQuery.of(context).size.width - 135,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _selectedImages.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            FileImage(_selectedImages[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        _removeImage(index);
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                ],
              ),
              const SizedBox(height: 8),
              TextFormField(
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Write a review',
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                textcolor: AppColor.primaryWhiteColor,
                onPressed: () {},
                text: 'Submit',
                backcolor: AppColor.primaryBlackColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
