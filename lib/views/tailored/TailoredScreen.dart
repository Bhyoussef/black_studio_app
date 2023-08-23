import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../colors/Colors.dart';

class TailoredScreen extends StatelessWidget {
  const TailoredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryWhiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryBlackColor,
          ),
        ),
        title: Text(
          'Tailored',
          style: GoogleFonts.beVietnamPro(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset('assets/imgs/Line.png'),
                  Image.asset('assets/imgs/Length.png'),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/imgs/dress.png',fit: BoxFit.cover,),
                      Positioned(
                          top: 180,
                          right: 62,
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/Line 50.png'),
                              Image.asset('assets/imgs/Line 50.png'),

                            ],
                          )),
                      Positioned(
                          top: 80,
                          right: 88,
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/Line 51.png'),
                              Image.asset('assets/imgs/Line 51.png'),
                            ],
                          )),
                      Positioned(
                          top: -10,
                          right: 75,
                          child: Column(
                            children: [

                              Image.asset('assets/imgs/Vector 1.png'),
                              Image.asset('assets/imgs/Vector 1.png'),
                            ],
                          )),
                      Positioned(
                          top: -10,
                          right: -25,
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/Sleeve Length.png'),
                              Image.asset('assets/imgs/Line 52.png'),

                            ],
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
