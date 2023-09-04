// ignore_for_file: sort_child_properties_last

import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key, required this.textHintForm});
  final String? textHintForm;

  @override
  State<HelpPage> createState() => _HelpPageState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Technology"), value: "Technology"),
    const DropdownMenuItem(child: Text("saloon"), value: "saloon"),
    const DropdownMenuItem(child: Text("Polyclinics"), value: "Polyclinics"),
    const DropdownMenuItem(child: Text("Hospital"), value: "Hospital"),
  ];
  return menuItems;
}

class _HelpPageState extends State<HelpPage> {
  String selectedValue = "Technology";

  get textHintForm => textHintForm;

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteGrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeCofig.screenHeight! / 3,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'icons/arrow-back.svg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(36),
                          child: Text(
                            'Create new appointment',
                            style: kPoppinsMedium.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 4,
                              color: kDarkBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeCofig.blockSizeVertical! * 18,
                            width: SizeCofig.screenWidth! * 0.93,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  color: kGrey.withOpacity(0.4),
                                  offset: const Offset(0.0, 4.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.3,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select your visit type, we will determine the appropriate choice for you. ',
                                  style: kPoppinsMedium.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 3,
                                    color: kDarkBlue,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: kGrey.withOpacity(0.22),
                                        offset: const Offset(0.0, 4.0),
                                        blurRadius: 24.0,
                                        spreadRadius: 0.3,
                                      ),
                                    ],
                                  ),
                                  child: dropDowFormField(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: SizeCofig.screenHeight! * 0.74,
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kGrey.withOpacity(0.5),
                      offset: const Offset(0.0, 8.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.8,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Select your Polyclinics',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 4,
                              color: kDarkBlue,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: kGrey.withOpacity(0.22),
                            offset: const Offset(0.0, 4.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.3,
                          ),
                        ],
                      ),
                      child: dropDowFormField(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select your prefered personel',
                          style: kPoppinsSemiBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 3,
                            color: kDarkBlue,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: kPoppinsSemiBold.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                              color: kdarkGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: SizeCofig.screenHeight! / 9,
                      width: SizeCofig.screenWidth! * 0.93,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: kGrey.withOpacity(0.22),
                            offset: const Offset(0.0, 4.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.3,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: SizeCofig.blockSizeHorizontal! * 16,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        SizeCofig.blockSizeHorizontal! / 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 24,
                                          backgroundColor: kWhite,
                                          child: SvgPicture.asset(
                                            'icons/profile.svg',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Aron David Supratman, MD',
                                              style: kPoppinsMedium.copyWith(
                                                fontSize: SizeCofig
                                                        .blockSizeHorizontal! *
                                                    2.6,
                                                color: kDarkBlue,
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeCofig.blockSizeVertical! /
                                                      2,
                                            ),
                                            Text(
                                              'Gastroenterology',
                                              style: kPoppinsRegular.copyWith(
                                                fontSize: SizeCofig
                                                        .blockSizeHorizontal! *
                                                    2.6,
                                                color: kGrey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: SizeCofig.screenWidth! / 8,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'icons/arrow-black.svg',
                                        width:
                                            SizeCofig.blockSizeHorizontal! * 7,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    bookingContainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    bookingContainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: SizeCofig.screenHeight! / 20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kLightGreen,
                          borderRadius: BorderRadius.circular(kBorderRadius)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('icons/info.svg'),
                          Text(
                            'Complete all your Detail before continuing',
                            style: kPoppinsRegular.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 3,
                              color: kDarkBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: SizeCofig.screenHeight! / 14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.circular(kBorderRadius),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Book an appointment',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kDarkBlue,
                          ),
                        ),
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

  Container bookingContainer() {
    return Container(
      height: 62,
      width: SizeCofig.screenWidth! * 0.93,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: kBorderColor),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: textFormField(),
    );
  }

  TextFormField textFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: textHintForm,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 48,
          vertical: 14,
        ),
        prefixIcon: const Icon(Icons.bookmark_add, color: kdarkGreen),
      ),
      style: kPoppinsBold.copyWith(
        fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
        color: kDefaultIconDarkColor,
      ),
    );
  }

  DropdownButtonFormField<String> dropDowFormField() {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 14,
          ),
          prefixIcon: const Icon(Icons.bookmark_add, color: kdarkGreen),
        ),
        style: TextStyle(
          color: kDarkBlue,
          fontSize: SizeCofig.blockSizeHorizontal! * 3,
        ),
        dropdownColor: kWhite,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems);
  }
}
