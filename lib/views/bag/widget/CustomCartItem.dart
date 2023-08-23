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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Image.asset(
              imageUrl,
              width: 150,
              height: 180,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColor.primaryGreyColor, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: onMinusPressed,
                      icon: const Icon(Icons.remove, size: 15),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        quantity,
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: onPlusPressed,
                      icon: const Icon(Icons.add, size: 15),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryGreyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                category,
                style: GoogleFonts.beVietnamPro(
                  color: AppColor.primaryGreyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'QAR $price',
                    style: GoogleFonts.beVietnamPro(
                      color: AppColor.primaryBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  /* TextButton(
                    onPressed: onRemovePressed,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Remove',
                      style: GoogleFonts.beVietnamPro(
                        color: AppColor.primaryBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ), */
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
