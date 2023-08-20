import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'AddReviewScreen.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

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
          'Reviews',
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
        actions: [
          TextButton(
            onPressed: () {
              Get.to(() => const AddReviewScreen());
            },
            child: const Text(
              'Add Review',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
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
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                height: 1,
                color: AppColor.secondaryGreyColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3, // Number of reviews
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColor.primaryBlackColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColor.primaryBlackColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColor.primaryBlackColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColor.primaryBlackColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColor.primaryBlackColor,
                                size: 20,
                              ),
                            ],
                          ),
                          Text(
                            '6 month ago',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'It looks very beautiful but since its made of lace andthe colour is white it is slightly transparent. It shouldhave been padded bcuz its transparent The fittingis not good at all. It doesnt sit tight on the bust andits too loose on the sides.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Divider(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
