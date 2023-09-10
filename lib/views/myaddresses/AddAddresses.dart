import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'AddressesScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  bool defaultShipping = false;
  bool defaultBilling = false;


  @override
  Widget build(BuildContext context) {
    final isArabic = AppLocalizations.of(context)!.language == "العربية";
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.primaryBlackColor,),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text(
          AppLocalizations.of(context)!.addAddressTitle,
          style: GoogleFonts.beVietnamPro(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryBlackColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:isArabic ?EdgeInsets.only(right: 16):EdgeInsets.only(left: 16),
                      child: Text(
                        AppLocalizations.of(context)!.contactDetailsTitle,
                        style: GoogleFonts.tenorSans(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        cursorColor: AppColor.primaryBlackColor,
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.firstNameLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.lastNameLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.mobilePhoneLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  isArabic ?EdgeInsets.only(right: 16):EdgeInsets.only(left: 16),
                      child: Text(
                        AppLocalizations.of(context)!.addressDetailsTitle,
                        style: GoogleFonts.tenorSans(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.address1Label,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.address2Label,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.cityLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.zipCodeLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.countryLabel,
                            labelStyle: GoogleFonts.beVietnamPro(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryGreyColor,
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    checkColor: AppColor.primaryWhiteColor,
                    activeColor: AppColor.primaryBlackColor,
                    value: defaultShipping,
                    onChanged: (bool? value) {
                      setState(() {
                        defaultShipping = value!;
                      });
                    },
                  ),
                  Text(
                    AppLocalizations.of(context)!.setDefaultShipping,
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryBlackColor,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    checkColor: AppColor.primaryWhiteColor,
                    activeColor: AppColor.primaryBlackColor,
                    value: defaultBilling,
                    onChanged: (bool? value) {
                      setState(() {
                        defaultBilling = value!;
                      });
                    },
                  ),
                  Text(
                    AppLocalizations.of(context)!.setDefaultBilling,
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryBlackColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  textcolor: AppColor.primaryWhiteColor,
                  backcolor: AppColor.primaryBlackColor,
                  onPressed: () {
                    Get.to(() => const AdressesScreen());
                  },
                  text: AppLocalizations.of(context)!.saveButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
