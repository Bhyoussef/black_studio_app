import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class SizeSection extends StatelessWidget {
  const SizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColor.primaryGreyColor,
                            width: .2,
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          foregroundColor: Colors.black,
                          child: Icon(
                            Icons.close,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Size Guide',
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryBlackColor
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                    color: AppColor.secondaryGreyColor,
                    width: 1.0,
                  ),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            color: AppColor.secondaryGreyColor,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Product'),
                                Text('Size'),
                              ],
                            ),
                          ),
                        ), // Empty cell
                        const TableCell(
                          child: Center(
                            child: Text('Bust'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('Length'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('Waist'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('XS'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('30"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('28"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('S'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('36"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('30"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('M'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('38"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('L'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('38"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('XL'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('38"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('XXL'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('38"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          // Wrap the TableCell with a Container and specify the height
                          child: Container(
                            height: 60, // Specify the height here
                            width: 150,
                            color: AppColor.secondaryGreyColor,
                            child: const Center(
                              child: Text('XXXL'),
                            ),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('34"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('38"'),
                          ),
                        ),
                        const TableCell(
                          child: Center(
                            child: Text('32"'),
                          ),
                        ),
                      ],
                    ),
                    // Add more TableRow widgets for other sizes
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
