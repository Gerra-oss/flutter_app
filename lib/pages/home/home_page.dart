import 'package:alt/authantication/login_page.dart';
import 'package:alt/constant/app_style.dart';

import 'package:alt/constant/const_appointment_details.dart';
import 'package:alt/constant/const_appointment_time.dart';
import 'package:alt/constant/const_svg.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          elevation: 0,
          surfaceTintColor: kWhite,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              icon: SvgPicture.asset('icons/logout.svg'),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: kWhite,
          elevation: 0,
          child: ListView(
            children: [
              ListTile(
                leading: SvgPicture.asset('icons/user-lock.svg'),
                title: Text(
                  'Privacy',
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    color: kDarkBlue,
                  ),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('icons/tags.svg'),
                title: Text(
                  'Terms & conditions',
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    color: kDarkBlue,
                  ),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('icons/settings.svg'),
                title: Text(
                  'Settings',
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    color: kDarkBlue,
                  ),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('icons/logout.svg'),
                title: Text(
                  'Log out',
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    color: kDarkBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              detailData(),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: SizeCofig.screenHeight! * 0.26,
                        width: SizeCofig.screenWidth! * 0.93,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(42),
                              topRight: Radius.circular(42),
                              bottomLeft: Radius.circular(42),
                              bottomRight: Radius.circular(42)),
                          color: kWhite,
                          boxShadow: [
                            BoxShadow(
                              color: kGrey.withOpacity(0.42),
                              offset: const Offset(0.0, 8.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.8,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                          color: kLightGreen,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.notifications,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Emergency',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: kLightGreen,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.call,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Make Call',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: kLightGreen,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.hail_sharp,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Sloon',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: kLightGreen,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.person,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Doctors',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                        color: kLightGreen,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.coronavirus,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Covid-19',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! * 0.07,
                                      width: SizeCofig.screenWidth! * 0.14,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: kLightGreen,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.now_widgets,
                                          color: kDarkBlue,
                                          size: 36,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'More',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.6,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: SizeCofig.screenHeight! * 0.23,
                width: SizeCofig.screenWidth! * 0.93,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(42),
                      topRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                      bottomRight: Radius.circular(42)),
                  color: kWhiteBlue,
                  boxShadow: [
                    BoxShadow(
                      color: kLightBlue.withOpacity(0.32),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcomoming Appointment',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: SizeCofig.blockSizeHorizontal! * 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeCofig.blockSizeHorizontal! / 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                    backgroundColor: kWhite,
                                    child: ProfilePicture(
                                      iconPicture:
                                          SvgPicture.asset('icons/profile.svg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PersonBookingDetails(
                                        personName: 'James Paul',
                                        position: 'Barber',
                                        designation: 'Gastroentelogy',
                                        textColor: kWhite,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: SizeCofig.screenWidth! * 0.24,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: ProfilePicture(
                                  iconPicture: SvgPicture.asset(
                                    'icons/arrow.svg',
                                    width: SizeCofig.blockSizeHorizontal! * 7,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeCofig.blockSizeVertical! * 1.4,
                    ),
                    AppointmentTime(
                      iconPicture: SvgPicture.asset('icons/clock.svg'),
                      textColor: kWhite,
                      timeColor: kLighterBlue,
                    )
                  ],
                ),
              ),
              //bottom box
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Align(
                    child: Container(
                      height: SizeCofig.screenHeight! / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: kGrey.withOpacity(0.44),
                            offset: const Offset(0.0, 8.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick actions',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kDarkBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: SizeCofig.screenWidth! / 2.2,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  border: Border.all(color: kBorderColor)),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'icons/apps-add.svg',
                                    height: 16,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Book new appointment",
                                      overflow: TextOverflow.ellipsis,
                                      style: kPoppinsMedium.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! *
                                                2.3,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: SizeCofig.screenWidth! / 2.4,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  border: Border.all(color: kBorderColor)),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: ProfilePicture(
                                      iconPicture:
                                          SvgPicture.asset('icons/globe.svg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Call ambulance",
                                    style: kPoppinsMedium.copyWith(
                                      fontSize:
                                          SizeCofig.blockSizeHorizontal! * 2.3,
                                      color: kDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: SizeCofig.screenHeight! / 3.6,
                          child: ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.all(12),
                                margin: const EdgeInsets.only(right: 20),
                                height: SizeCofig.screenHeight! / 3,
                                width: SizeCofig.screenWidth! / 2,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  color: kWhite,
                                  boxShadow: [
                                    BoxShadow(
                                      color: kDarkBlue.withOpacity(0.051),
                                      offset: const Offset(0.0, 3.0),
                                      blurRadius: 24.0,
                                      spreadRadius: 0.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: SizeCofig.screenHeight! / 9,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            kBorderRadius),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/company.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Save time ',
                                        style: kPoppinsRegular.copyWith(
                                          fontSize:
                                              SizeCofig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 19,
                                              backgroundColor: kLightBlue,
                                              backgroundImage: AssetImage(
                                                'assets/company.jpg',
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "ALt company",
                                                  style:
                                                      kPoppinsMedium.copyWith(
                                                    fontSize: SizeCofig
                                                            .blockSizeHorizontal! *
                                                        2.6,
                                                  ),
                                                ),
                                                Text(
                                                  "Book Appointment",
                                                  style:
                                                      kPoppinsRegular.copyWith(
                                                    fontSize: SizeCofig
                                                            .blockSizeHorizontal! *
                                                        2.4,
                                                    color: kGrey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          height: SizeCofig.screenHeight! / 24,
                                          width: SizeCofig.screenWidth! / 12,
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            color: kLightGreen,
                                          ),
                                          child: SvgPicture.asset(
                                            'icons/arrow-black.svg',
                                            width: 48,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
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
      ),
    );
  }

  Container detailData() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeCofig.screenWidth! / 36,
      ),
      height: SizeCofig.blockSizeHorizontal! * 18,
      width: SizeCofig.screenWidth! * 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      padding:
          EdgeInsets.symmetric(horizontal: SizeCofig.blockSizeHorizontal! / 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: kWhite,
                child: ProfilePicture(
                  iconPicture: SvgPicture.asset('icons/profile.svg'),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Goodmorning',
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                      color: kDarkBlue,
                    ),
                  ),
                  SizedBox(
                    height: SizeCofig.blockSizeVertical! / 4,
                  ),
                  Text(
                    'John Doe',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeCofig.blockSizeHorizontal! * 3,
                      color: kDarkBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: SizeCofig.screenWidth! / 4,
          ),
          IconButton(
            onPressed: () {},
            icon: ProfilePicture(
              iconPicture: SvgPicture.asset('icons/bell.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
