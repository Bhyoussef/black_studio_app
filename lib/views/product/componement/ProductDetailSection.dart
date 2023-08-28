import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class ProductDetailSection extends StatelessWidget {
  const ProductDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'PRODUCT DETAILS',
                style: GoogleFonts.tenorSans(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/imgs/document.png')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grey regular empire top',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Self design',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Shoulder straps, sleeveless',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Woven lace',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tie-ups',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Size & Fit',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/imgs/Rectangle 327.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Our model is 108cm/5’11” and is wearing a L',
                        style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor),
                      ),
                    ],
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
                        'This item fits true to size',
                        style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor),
                      ),
                    ],
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
                        'We suggest taking your normal size',
                        style: GoogleFonts.tenorSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Material & Care',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryBlackColor),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset('assets/imgs/Rectangle 327.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Polyester',
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset('assets/imgs/Rectangle 327.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dry clean',
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Specifications',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryBlackColor),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Table(
                columnWidths: {
                  0: FixedColumnWidth(200), // Adjust column widths as needed
                  1: FlexColumnWidth(),
                },
                children: [
                  buildTableRow('Sleeve Length', 'Sleeveless'),
                  buildTableRow('Neck', 'Shoulder Straps'),
                  buildTableRow('Type', 'Empire'),
                  buildTableRow('Print or Pattern Type', 'Self Design'),
                  buildTableRow('Sleeve Styling', 'Shoulder Straps'),
                  buildTableRow('Transparency', 'Opaque'),
                  buildTableRow('Lining', 'Has a lining'),
                  buildTableRow('Closure', 'Tie-ups'),
                  buildTableRow('Length', 'Regular'),
                  buildTableRow('Fabric Type', 'Lace'),
                  buildTableRow('Occasion', 'Casual'),
                  buildTableRow('Weave Type', 'Woven'),
                ],
              ),
            ],
          ),
        ),
        // Divider
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 3,
            height: 1,
            color: AppColor.secondaryGreyColor,
          ),
        ),
      ],
    );
  }
}

// Function to build a table row with two texts
TableRow buildTableRow(String leftText, String rightText) {
  return TableRow(
    children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            leftText,
            style: GoogleFonts.beVietnamPro(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryGreyColor,
            ),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            rightText,
            style: GoogleFonts.beVietnamPro(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryBlackColor,
            ),
          ),
        ),
      ),
    ],
  );
}
