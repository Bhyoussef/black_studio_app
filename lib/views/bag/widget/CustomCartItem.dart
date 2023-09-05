import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class CartItem extends StatelessWidget {
  final String productName;
  final double price;
  final String category;
  final String imageUrl;
  final String quantity;
  final VoidCallback? onPlusPressed;
  final VoidCallback? onMinusPressed;
  final VoidCallback? onRemovePressed;

  const CartItem({
    super.key,
    required this.productName,
    required this.price,
    required this.category,
    required this.imageUrl,
    required this.quantity,
    this.onPlusPressed,
    this.onMinusPressed,
    this.onRemovePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.network(
                  imageUrl,
                  width: 105,
                  height: 124,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'QAR ${price.toInt()}',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  productName,
                  style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    Text(
                      'Color : ',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryGreyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      'Red',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Size : ',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryGreyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      'L',
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border:
                Border.all(color: AppColor.secondaryGreyColor, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: onMinusPressed,
                    icon: const Icon(Icons.remove, size: 12),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      quantity,
                      style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: onPlusPressed,
                    icon: const Icon(Icons.add, size: 12),
                  ),
                ],
              ),
            ),


            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Handle "Remove" button click
                  },
                  child: Text(
                    'Remove',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Add spacing between buttons
                TextButton(
                  onPressed: () {
                    // Handle "Save for Later" button click
                  },
                  child: Text(
                    'Save for Later',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ],
    );
  }
}
