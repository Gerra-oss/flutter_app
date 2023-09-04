import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/appointment_list_view.dart';
import 'package:alt/constant/const_svg.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          surfaceTintColor: kWhite,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('icons/arrow-back.svg'),
          ),
          centerTitle: true,
          title: Text(
            'Appointment',
            style: kPoppinsBold.copyWith(
              fontSize: SizeCofig.blockSizeHorizontal! * 4,
              color: kDarkBlue,
            ),
          ),
        ),
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeCofig.screenHeight! / 5.6,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: SizeCofig.screenWidth! * 0.73,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  color: kGrey.withOpacity(0.4),
                                  offset: const Offset(0.0, 8.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.8,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '4',
                                      style: kPoppinsBold.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 4,
                                        color: kLighterBlue,
                                      ),
                                    ),
                                    Text(
                                      'Today',
                                      style: kPoppinsMedium.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 3,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: kGrey,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '20',
                                      style: kPoppinsBold.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 4,
                                        color: kLighterBlue,
                                      ),
                                    ),
                                    Text(
                                      'Total',
                                      style: kPoppinsMedium.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 3,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: kGrey,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '3',
                                      style: kPoppinsBold.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 4,
                                        color: kLighterBlue,
                                      ),
                                    ),
                                    Text(
                                      'Cancelled',
                                      style: kPoppinsMedium.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 3,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: SizeCofig.screenWidth! / 6,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.withOpacity(0.051),
                                  offset: const Offset(0.0, 8.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.8,
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: ProfilePicture(
                                iconPicture: SvgPicture.asset('icons/add.svg'),
                              ),
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
                height: SizeCofig.screenHeight! / 1.2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: SizeCofig.screenWidth! * 0.7,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kBorderColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 68,
                                width: SizeCofig.screenWidth! * 0.2,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  color: kWhite,
                                ),
                                child: Text(
                                  "Upcoming",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsMedium.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 2.3,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Text(
                                "Past",
                                overflow: TextOverflow.ellipsis,
                                style: kPoppinsMedium.copyWith(
                                  fontSize:
                                      SizeCofig.blockSizeHorizontal! * 2.3,
                                  color: kDarkBlue,
                                ),
                              ),
                              Text(
                                "Cancelled",
                                overflow: TextOverflow.ellipsis,
                                style: kPoppinsMedium.copyWith(
                                  fontSize:
                                      SizeCofig.blockSizeHorizontal! * 2.3,
                                  color: kDarkBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: SizeCofig.screenWidth! * 0.175,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            border: Border.all(color: kBorderColor),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'icons/setting.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Today',
                          style: kPoppinsMedium.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 5,
                            color: kDarkBlue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppointmentListView(
                      personName: 'Aron David Supratman',
                      position: 'MD',
                      designation: 'Gastoentology',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppointmentListView(
                      personName: 'Amani Joash',
                      position: 'Software',
                      designation: 'Technology',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tommorow',
                          style: kPoppinsMedium.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 5,
                            color: kDarkBlue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppointmentListView(
                      personName: 'Paul Doe',
                      position: 'Web Design',
                      designation: 'Technology',
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
