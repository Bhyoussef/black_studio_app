import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreenEdit extends StatefulWidget {
  const ProfileScreenEdit({Key? key}) : super(key: key);

  @override
  _ProfileScreenEditState createState() => _ProfileScreenEditState();
}

class _ProfileScreenEditState extends State<ProfileScreenEdit> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  File? _image;

  void _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50, // Adjust the image quality as needed
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          AppLocalizations.of(context)!.editProfile.toUpperCase(),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  backgroundColor: AppColor.primaryBlackColor,
                  radius: 60,
                  backgroundImage: _image != null ? FileImage(_image!) : null,
                  child: _image == null
                      ? const Icon(
                    Icons.person,
                    size: 60,
                    color: AppColor.primaryGreyColor,
                  )
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 20),

            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.nameLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.emailLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.phoneNumberLabel,
                labelStyle: GoogleFonts.beVietnamPro(
                    fontSize: 15,
                    color: AppColor.primaryGreyColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              textcolor: AppColor.primaryWhiteColor,
              backcolor: AppColor.primaryBlackColor,
              onPressed: () {
                // TODO: Implement the logic for updating the profile
              },
              text: AppLocalizations.of(context)!.updateProfileButton,

            ),

          ],
        ),
      ),
    );
  }
}
