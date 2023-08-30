import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkia_ecommerce/colors/Colors.dart';
import 'package:linkia_ecommerce/utiles/ColumnBuilder.dart';
import 'AddReviewScreen.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

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
          'Reviews',
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
        actions: [
        /*  TextButton(
            onPressed: () {
              Get.to(() => const AddReviewScreen());
            },
            child: const Text(
              'Add Review',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*/
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.primaryBlackColor,
                      size: 30,
                    ),
                    Text('(34 Reviews)',style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.primaryGreyColor
                    ))

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('94% of customers recommend this product',style: GoogleFonts.beVietnamPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColor.primaryGreyColor
                ),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('5 stars',style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryBlackColor
                        ),),
                        Container(
                          width: 300,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Text('(24)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('4 stars',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        Container(
                          width: 300,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Text('(10)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))

                      ],
                    ),
                    SizedBox(height: 20,),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('3 stars',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        Container(
                          width: 300,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Text('(4)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))

                      ],
                    ),
                    SizedBox(height: 20,),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2 stars',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        Container(
                          width: 300,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Text('(2)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))

                      ],

                    ),
                    SizedBox(height: 20,),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('1 stars',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryBlackColor
                        )),
                        Container(
                          width: 300,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                        Text('(1)',style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryGreyColor
                        ))

                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
              ),

              Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Customer Rating',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primaryBlackColor
                    ),
                  ),
                  SizedBox(height: 15),
                  //Size
                  Row(
                    children: [
                      Image.asset(
                          'assets/imgs/Search results for Measuring tape - Flaticon-2 1.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Size:',
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width - 40) / 5,
                        height: 10,
                        color: AppColor.fourthGreyColor,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 40) / 5,
                        height: 10,
                        color: AppColor.primaryBlackColor,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 40) / 5,
                        height: 10,
                        color: AppColor.fourthGreyColor,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 40) / 5,
                        height: 10,
                        color: AppColor.fourthGreyColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Runs Small",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                      Text("Runs Large",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                              'assets/imgs/Search results for Leaf - Flaticon-2 1.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Comfort:',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.primaryBlackColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Runs Small",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                      Text("Runs Large",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),


                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                          'assets/imgs/Search results for Diamond - Flaticon-2 (1) 1.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Quality',
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.fourthGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 5,
                          height: 10,
                          color: AppColor.primaryBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Runs Small",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                      Text("Runs Large",style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                  height: 2,
                  color: AppColor.secondaryGreyColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ColumnBuilder(
                shrinkWrap: true,
                itemCount: 3, // Number of reviews
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColor.primaryBlackColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              '6 month ago',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'LOVELY CROP TOP COME UP SMALL THO',
                          style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: AppColor.primaryBlackColor
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'It looks very beautiful but since its made of lace andthe colour is white it is slightly transparent. It shouldhave been padded bcuz its transparent The fittingis not good at all. It doesnt sit tight on the bust andits too loose on the sides.',
                          style: GoogleFonts.beVietnamPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColor.primaryGreyColor
                          ),
                        ),
                        SizedBox(height: 8),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
