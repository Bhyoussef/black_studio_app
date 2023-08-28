import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(children: [
            Text(
              'Reviews',
              style: GoogleFonts.tenorSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 10,),
            Text(
              '(34 Reviews)',
              style: GoogleFonts.tenorSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 10,),
            Row(
              children: [
                Text(
                  '4.0',
                  style: GoogleFonts.tenorSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryBlackColor,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 16,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 16,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 16,
                ),
                Icon(
                  Icons.star,
                  color: AppColor.primaryBlackColor,
                  size: 16,
                ),
                Icon(
                  Icons.star_outline,
                  color: AppColor.primaryBlackColor,
                  size: 16,
                ),
              ],
            ),

          ],),
          SizedBox(height: 15),

          Text(
            '94% of customers recommend this product',
            style: GoogleFonts.tenorSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Customer Rating',
            style: GoogleFonts.tenorSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Image.asset('assets/imgs/Search results for Measuring tape - Flaticon-2 1.png'),
              SizedBox(width: 10,),
              Text(
                'Size:',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
          /*    Text(
                'Runs Small',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Runs Large',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),*/
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Row(
                children: [
                  Image.asset('assets/imgs/Search results for Leaf - Flaticon-2 1.png'),
                  SizedBox(width: 10,),
                  Text(
                    'Comfort:',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
            /*  Text(
                'Uncomfortable',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Comfortable',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),*/
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset('assets/imgs/Search results for Diamond - Flaticon-2 (1) 1.png'),
              SizedBox(width: 10,),
              Text(
                'Quality',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
          /*    Text(
                'Poor',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Great',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryBlackColor,
                ),
              ),*/
            ],
          ),
        ],
      ),
    );

  }
}
