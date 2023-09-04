import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/const_appointment_details.dart';
import 'package:alt/constant/const_appointment_time.dart';
import 'package:alt/constant/const_svg.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentListView extends StatelessWidget {
  const AppointmentListView({
    super.key,
    required this.position,
    required this.designation,
    required this.personName,
  });
  final String position;
  final String personName;
  final String designation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeCofig.screenHeight! * 0.16,
      width: SizeCofig.screenWidth! * 0.93,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: kBorderColor),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: SizeCofig.blockSizeHorizontal! * 16,
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
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: kWhite,
                          child: ProfilePicture(
                            iconPicture: SvgPicture.asset('icons/profile.svg'),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        PersonBookingDetails(
                          personName: personName,
                          position: position,
                          designation: designation,
                          textColor: kDarkBlue,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: SizeCofig.screenWidth! / 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ProfilePicture(
                        iconPicture: SvgPicture.asset(
                          'icons/arrow-black.svg',
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
            iconPicture: SvgPicture.asset('icons/clock-green.svg'),
            textColor: kDarkBlue,
            timeColor: kLightGreen,
          ),
        ],
      ),
    );
  }
}
