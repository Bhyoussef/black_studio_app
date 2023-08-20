import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

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
          'Add Review',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 40,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 40,
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
            TextFormField(
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Write a review',
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Set your desired corner radius
                  ),
                ),
                onPressed: () {},
                child: Text('Submit',
                    style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryWhiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
