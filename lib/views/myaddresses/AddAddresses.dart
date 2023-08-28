import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/widget/CustomButton.dart';
import 'AddressesScreen.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  bool defaultSipping = false;
  bool defaultBilling = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: AppColor.primaryBlackColor,),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: AppColor.primaryWhiteColor,
        title: Text('Add Address',style: GoogleFonts.beVietnamPro(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColor.primaryBlackColor,
        ),),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Contact Details',
                        style: GoogleFonts.tenorSans(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: AppColor.primaryBlackColor,
                  decoration: InputDecoration(
                    labelText: 'First Name',
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
                    labelText: 'Last Name',
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
                    labelText: 'Mobile Phone',
                      labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: AppColor.secondaryGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Address Details',
                        style: GoogleFonts.tenorSans(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Address 1',
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
                    labelText: 'Address 2',
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
                    labelText: 'City',
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
                    labelText: 'ZIP Code',
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
                    labelText: 'Country',
                      labelStyle: GoogleFonts.beVietnamPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryGreyColor,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    checkColor: AppColor.primaryWhiteColor,
                    activeColor: AppColor.primaryBlackColor,
                    value: defaultSipping,
                    onChanged: (bool? value) {
                      setState(() {
                        defaultSipping = value!;
                      });
                    },
                  ),
                  Text('Set as Default Shipping Address',style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  )),
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
                  Text('Set as Default Billing Address',style: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryBlackColor,
                  ),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  textcolor: AppColor.primaryWhiteColor,
                  backcolor:AppColor.primaryBlackColor,onPressed: () {
                  Get.to(()=>const AdressesScreen());
                }, text: 'Save',),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
