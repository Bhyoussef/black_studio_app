import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {

  int _rating = 0;
  void _setRating(int value) {
    setState(() {
      _rating = value;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    _rating >= 1 ? Icons.star : Icons.star_outline  ,
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
            const Text("Customer Rating",style: TextStyle()),
            Row(
              children: [
                Image.asset(
                  'assets/icons/size.png',
                  width: 16,
                ),
                const SizedBox(width: 8),
                const Text("Size:",style: TextStyle()),
              ],
            ),

            Row(
              children: [
                Image.asset(
                  'assets/icons/comfort.png',
                  width: 16,
                ),
                const SizedBox(width: 8),
                const Text("Comfort:",style: TextStyle()),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/quality.png',
                  width: 16,
                ),
                const SizedBox(width: 8),
                const Text("Quality:",style: TextStyle()),
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
              onPressed: () {  }, text: 'Submit',backcolor: AppColor.primaryBlackColor,),
          ],
        ),
      ),
    );
  }
}
