import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
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
                      width: 50,
                      height: 50,
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
                )

            ],),
            const ListTileWithOptions(
              title: 'Category',
              options: ['Category 1', 'Category 2', 'Category 3'],
            ),
            const ListTileWithOptions(
              title: 'Color',
              options: ['Color 1', 'Color 2', 'Color 3'],
            ),
            const ListTileWithOptions(
              title: 'Size',
              options: ['Size 1', 'Size 2', 'Size 3'],
            ),
            const ListTileWithOptions(
              title: 'Length',
              options: ['Length 1', 'Length 2', 'Length 3'],
            ),
            const ListTileWithOptions(
              title: 'Pattern',
              options: ['Pattern 1', 'Pattern 2', 'Pattern 3'],
            ),
            const ListTileWithOptions(
              title: 'Style',
              options: ['Style 1', 'Style 2', 'Style 3'],
            ),
            // Add more ListTileWithOptions widgets for other parameters
            const ListTileWithOptions(
              title: 'Price',
              isPriceSlider: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.primaryBlackColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                          },
                          child: Text(
                            'Clear All',
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )),

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 60,
                        width: 180,
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: AppColor.primaryBlackColor,
                          onPressed: () {},
                          child: Text(
                            'Apply',
                            style: GoogleFonts.beVietnamPro(
                              color: AppColor.primaryWhiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ListTileWithOptions extends StatefulWidget {
  final String title;
  final List<String>? options;
  final bool isPriceSlider;

  const ListTileWithOptions({
    required this.title,
    this.options,
    this.isPriceSlider = false,
  });

  @override
  _ListTileWithOptionsState createState() => _ListTileWithOptionsState();
}

class _ListTileWithOptionsState extends State<ListTileWithOptions> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.title,
            style: GoogleFonts.beVietnamPro(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColor.primaryBlackColor),
          ),
          trailing: _isExpanded
              ? Icon(Icons.arrow_drop_up)
              : Icon(Icons.arrow_drop_down),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded)
          Column(
            children: [
              if (widget.isPriceSlider)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Slider(
                    activeColor: AppColor.primaryBlackColor,
                    inactiveColor: AppColor.secondaryGreyColor,
                    value: 0.0,
                    // Add your slider configuration here
                    onChanged: (double value) {
                      // Handle slider value change
                    },
                  ),
                ),
              if (!widget.isPriceSlider && widget.options != null)
                Row(
                  children: widget.options!.map((option) {
                    return GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 35,
                        width: 100,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColor.primaryWhiteColor,
                            border: Border.all(
                                color: AppColor.primaryGreyColor
                            )
                        ),
                        child: Text(option,style: GoogleFonts.beVietnamPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.primaryBlackColor
                        ),),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
      ],
    );
  }
}
