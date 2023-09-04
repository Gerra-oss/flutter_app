import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/const_svg.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class AppointmentTime extends StatelessWidget {
  const AppointmentTime({
    super.key,
    required this.timeColor,
    required this.textColor,
    required this.iconPicture,
  });
  final Color? timeColor;
  final Color? textColor;
  final SvgPicture? iconPicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeCofig.screenHeight! / 20,
      width: double.infinity,
      decoration: BoxDecoration(
        color: timeColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePicture(iconPicture: iconPicture),
          Text(
            DateFormat('EEEE').format(DateTime.now()),
            style: kPoppinsRegular.copyWith(
              fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
              color: textColor,
            ),
          ),
          Text(
            DateFormat('MMMM dd, yyyy').format(DateTime.now()),
            style: kPoppinsRegular.copyWith(
              fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
              color: textColor,
            ),
          ),
          Text(
            DateFormat('HH:MM - HH:MM a').format(DateTime.now()),
            style: kPoppinsRegular.copyWith(
              fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
