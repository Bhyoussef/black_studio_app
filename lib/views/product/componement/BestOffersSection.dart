import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class BestOffesrSection extends StatelessWidget {
  const BestOffesrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'BEST OFFERS',
                style: GoogleFonts.tenorSans(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset('assets/imgs/Tag.png')
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Best Price: \$420',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryBlackColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Image.asset('assets/imgs/Rectangle 327.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Coupon code: BLACKSTU125',
                    style: GoogleFonts.tenorSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/imgs/Rectangle 327.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Coupon discount: \$120 off (check cart for final savings)',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryGreyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/imgs/Rectangle 327.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'Applicable on: Orders above \$420 (only on first purchase)',
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Viwe Eligible Products.',
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        color: AppColor.primaryBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
