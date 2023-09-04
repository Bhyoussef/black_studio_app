import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';

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
        leading:Padding(
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
              const ListTileWithOptions(
                title: 'Category',
                options: ['Blouses', 'Tshirts', 'Tank Tops'],
              ),
              const ListTileWithOptions(
                title: 'Color',
                options: ['Red', 'Yellow', 'Green'],
              ),
              const ListTileWithOptions(
                title: 'Size',
                options: ['Small', 'Moyen', 'Large'],
              ),
              const ListTileWithOptions(
                title: 'Length',
                options: ['34', '36', '38'],
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
                          'Apply',
                          style: GoogleFonts.beVietnamPro(
                            color: AppColor.primaryWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )),
              ),

            ],
          ),
        ),

      )
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
                color: AppColor.primaryBlackColor),
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
