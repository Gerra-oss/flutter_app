// ignore_for_file: sort_child_properties_last

import 'package:alt/bottom_bar.dart';
import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/const_appointment_details.dart';
import 'package:alt/constant/constant_text_form_field.dart';
import 'package:alt/constant/date_picker.dart';
import 'package:alt/constant/responsive_size.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key});

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
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

String? txtHint;

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  String selectedValue = "Technology";

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const BottomBar()),
            );
          },
          icon: SvgPicture.asset(
            'icons/arrow-back.svg',
          ),
        ),
        centerTitle: true,
        title: Text(
          'Create new appointment',
          style: kPoppinsMedium.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 4,
            color: kDarkBlue,
          ),
        ),
        backgroundColor: kWhite,
        surfaceTintColor: kWhite,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeCofig.screenHeight! / 3,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SizeCofig.blockSizeVertical! * 18,
                          width: SizeCofig.screenWidth! * 0.916,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(kBorderRadius),
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
                                  fontSize: SizeCofig.blockSizeHorizontal! * 3,
                                  color: kDarkBlue,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              dropDownList(),
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
              height: SizeCofig.screenHeight! * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
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
                      Text('Select your Polyclinic',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kDarkBlue,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  dropDownList(),
                  const SizedBox(
                    height: 20,
                  ),
                  const HorizontalData(
                    leftText: 'Select your preferred personel',
                    rightText: 'View all',
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
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PersonBookingDetails(
                                            personName: 'Simon John',
                                            position: 'Mobile App',
                                            designation: 'software developer',
                                            textColor: kDarkBlue,
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
                                      width: SizeCofig.blockSizeHorizontal! * 7,
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
                  const HorizontalData(
                    leftText: 'Select date',
                    rightText: 'Select time',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormContainerDatePicker(
                        textForm: DateForm(
                          formText: 'Date',
                          formIcon: Icon(
                            Icons.calendar_month,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.datetime,
                          text: false,
                        ),
                      ),
                      FormContainerDatePicker(
                        textForm: DateForm(
                          formText: 'Time',
                          formIcon: Icon(
                            Icons.timer,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.datetime,
                          text: false,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FormContainer(
                    textForm: TextForm(
                      text: false,
                      textInputType: TextInputType.text,
                      formText: 'Enter appointment purpose',
                      formIcon: Icon(
                        Icons.note_add,
                        color: kdarkGreen,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                    height: 40,
                  ),
                  Container(
                    height: SizeCofig.screenHeight! / 14,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kLightGreen,
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
    );
  }

  Container dropDownList() {
    return Container(
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
      child: DropdownButtonFormField(
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
          items: dropdownItems),
    );
  }
}

class HorizontalData extends StatelessWidget {
  const HorizontalData({
    super.key,
    required this.leftText,
    required this.rightText,
  });
  final String? leftText;
  final String? rightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText!,
          style: kPoppinsSemiBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 3,
            color: kDarkBlue,
          ),
        ),
        Text(
          rightText!,
          style: kPoppinsSemiBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
            color: kdarkGreen,
          ),
        ),
      ],
    );
  }
}
