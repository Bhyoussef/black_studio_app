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
  int _size = 1;

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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => _setSize(1),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 5,
                    height: 30,
                    color: _size == 1 ? AppColor.primaryBlackColor : AppColor.fourthGreyColor,
                    child: Center(child: Text("1",style: TextStyle(color: _size == 1 ? AppColor.primaryWhiteColor : AppColor.primaryGreyColor ),)),
                  ),
                ),
                GestureDetector(
                  onTap: () => _setSize(2),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 5,
                    height: 30,
                    color: _size == 2 ? AppColor.primaryBlackColor : AppColor.fourthGreyColor,
                    child: Center(child: Text("2",style: TextStyle(color: _size == 2 ? AppColor.primaryWhiteColor : AppColor.primaryGreyColor ),)),
                  ),
                ),
                GestureDetector(
                  onTap: () => _setSize(3),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 5,
                    height: 30,
                    color: _size == 3 ? AppColor.primaryBlackColor : AppColor.fourthGreyColor,
                    child: Center(child: Text("3",style: TextStyle(color: _size == 3 ? AppColor.primaryWhiteColor : AppColor.primaryGreyColor ),)),
                  ),
                ),
                GestureDetector(
                  onTap: () => _setSize(4),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 5,
                    height: 30,
                    color: _size == 4 ? AppColor.primaryBlackColor : AppColor.fourthGreyColor,
                    child: Center(child: Text("4",style: TextStyle(color: _size == 4 ? AppColor.primaryWhiteColor : AppColor.primaryGreyColor ),)),
                  ),
                ),
                GestureDetector(
                  onTap: () => _setSize(5),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 5,
                    height: 30,
                    color: _size == 5 ? AppColor.primaryBlackColor : AppColor.fourthGreyColor,
                    child: Center(child: Text("5",style: TextStyle(color: _size == 5 ? AppColor.primaryWhiteColor : AppColor.primaryGreyColor ),)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
