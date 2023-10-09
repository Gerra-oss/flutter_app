import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/const_svg.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:alt/pages/help/icon_buttpn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeCofig.blockSizeVertical! * 50,
                child: Stack(
                  children: [
                    ///
                    ///
                    Container(
                      decoration: const BoxDecoration(),
                      child: SvgPicture.asset(
                        'assets/new.svg',
                      ),
                    ),

                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPaddingHorizontal,
                          vertical: 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(
                                  color: kDarkBlue,
                                ),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset(
                                'icons/back.svg',
                              ),
                            ),
                            Text(
                              "Details.",
                              style: kPoppinsBold.copyWith(
                                fontSize: SizeCofig.blockSizeHorizontal! * 5,
                                color: kDarkBlue,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(
                                  color: kDarkBlue,
                                ),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset(
                                'icons/bookmark.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: SizeCofig.blockSizeVertical! * 50,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kGrey.withOpacity(0.4),
                      offset: const Offset(0.0, 8.0),
                      blurRadius: 16.0,
                      spreadRadius: 0.8,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPaddingHorizontal,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Appointment Summary.",
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPaddingHorizontal,
                      ),
                      child: Text(
                        "All Rights reserved. No part of this publication may be reproduced or transmitted in any"
                        "form or by any means electronic, mechanical, Read More...",
                        textAlign: TextAlign.justify,
                        style: kPoppinsMedium.copyWith(
                          fontSize: SizeCofig.blockSizeHorizontal! * 3,
                          color: kGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const DetailStatisticsData(
                            headerText: 'Category',
                            bodyText: 'Software',
                            textHeaderColor: kGrey,
                            textBodyColor: kDarkBlue,
                            leftIcon: Icon(Icons.category),
                          ),
                          Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              border: Border.symmetric(
                                vertical: BorderSide(
                                  width: 0.15,
                                  color: kGreyWhite,
                                ),
                              ),
                            ),
                          ),
                          const DetailStatisticsData(
                            headerText: 'Days Left',
                            bodyText: '24',
                            textHeaderColor: kGrey,
                            textBodyColor: kDarkBlue,
                            leftIcon: Icon(Icons.calendar_month),
                          ),
                          Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              border: Border.symmetric(
                                vertical: BorderSide(
                                  width: 0.15,
                                  color: kGreyWhite,
                                ),
                              ),
                            ),
                          ),
                          const DetailStatisticsData(
                            headerText: 'Status',
                            bodyText: 'Upcomming',
                            textHeaderColor: kGrey,
                            textBodyColor: kdarkGreen,
                            leftIcon: Icon(Icons.meeting_room),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: SizeCofig.screenHeight! * 0.2,
                      width: SizeCofig.screenWidth! * 0.9,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kLightGreen,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Company Name',
                                style: kPoppinsBold.copyWith(
                                  fontSize: SizeCofig.blockSizeHorizontal! * 3,
                                  color: kDarkBlue,
                                ),
                              ),
                              const Icon(
                                Icons.donut_large,
                                color: kdarkGreen,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 36,
                                backgroundColor: kWhite,
                                child: ProfilePicture(
                                  iconPicture:
                                      SvgPicture.asset('icons/profile.svg'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hurry Porter',
                                    style: kPoppinsBold.copyWith(
                                      fontSize:
                                          SizeCofig.blockSizeHorizontal! * 3,
                                      color: kDarkBlue,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 40,
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: kWhite,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: kdarkGreen,
                                          radius: 16,
                                          child: Icon(
                                            Icons.done,
                                            color: kWhite,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Verified Account',
                                          style: kPoppinsRegular.copyWith(
                                            fontSize:
                                                SizeCofig.blockSizeHorizontal! *
                                                    3,
                                            color: kDarkBlue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Delete',
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 3.5,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Cancel',
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 3.5,
                                    color: kdarkGreen,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
