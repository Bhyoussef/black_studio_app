import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        leading: Padding(
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
                  size: 17,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.category,
                options: [
                  AppLocalizations.of(context)!.blouses,
                  AppLocalizations.of(context)!.tshirts,
                  AppLocalizations.of(context)!.tankTops,
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.color,
                options: [
                  AppLocalizations.of(context)!.red,
                  AppLocalizations.of(context)!.yellow,
                  AppLocalizations.of(context)!.green,
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.size,
                options: [
                  AppLocalizations.of(context)!.small,
                  AppLocalizations.of(context)!.medium,
                  AppLocalizations.of(context)!.large,
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.length,
                options: [
                  '34',
                  '36',
                  '38',
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.pattern,
                options: [
                  AppLocalizations.of(context)!.pattern1,
                  AppLocalizations.of(context)!.pattern2,
                  AppLocalizations.of(context)!.pattern3,
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.style,
                options: [
                  AppLocalizations.of(context)!.style1,
                  AppLocalizations.of(context)!.style2,
                  AppLocalizations.of(context)!.style3,
                ],
              ),
              ListTileWithOptions(
                title: AppLocalizations.of(context)!.price,
                isPriceSlider: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.primaryBlackColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.clearAll,
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryBlackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: AppColor.primaryBlackColor,
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.apply,
                        style: GoogleFonts.beVietnamPro(
                          color: AppColor.primaryWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
  bool isSelected = false;
  double sliderValue = 0.0;
  String selectedOption = '';

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
              color: AppColor.primaryBlackColor,
            ),
          ),
          trailing: _isExpanded
              ? const Icon(Icons.arrow_drop_up)
              : const Icon(Icons.arrow_drop_down),
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
                Slider(
                  activeColor: AppColor.primaryBlackColor,
                  inactiveColor: AppColor.secondaryGreyColor,
                  value: sliderValue,
                  min: 0, // Minimum value
                  max: 100, // Maximum value
                  divisions: 10,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value; // Update the slider value
                    });
                  },
                  label: '${sliderValue.toInt()}',
                ),

              if (!widget.isPriceSlider && widget.options != null)
                Row(
                  children: widget.options!.map((option) {
                    return GestureDetector(
                      onTap: () {
                        // Handle option selection
                      },
                      child: Tooltip(
                        message: option, // Display the option as a tooltip
                        child: Container(
                          height: 35,
                          width: 100,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColor.primaryBlackColor // Change background color when selected
                                : AppColor.primaryWhiteColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: isSelected
                                  ? AppColor.primaryBlackColor // Change border color when selected
                                  : AppColor.primaryGreyColor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              option,
                              style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: isSelected
                                    ? AppColor.primaryWhiteColor // Change text color when selected
                                    : AppColor.primaryGreyColor,
                              ),
                            ),
                          ),
                        ),
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
