import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';

class PersonBookingDetails extends StatelessWidget {
  const PersonBookingDetails({
    super.key,
    required this.personName,
    required this.position,
    required this.designation,
    required this.textColor,
  });

  final String personName;
  final String position;
  final String designation;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              personName,
              style: kPoppinsMedium.copyWith(
                fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                color: textColor,
              ),
            ),
            Text(
              ', ',
              style: kPoppinsMedium.copyWith(
                fontSize: SizeCofig.blockSizeHorizontal! * 3,
                color: textColor,
              ),
            ),
            Text(
              position,
              style: kPoppinsBold.copyWith(
                fontSize: SizeCofig.blockSizeHorizontal! * 3,
                color: textColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeCofig.blockSizeVertical! / 2,
        ),
        Text(
          designation,
          style: kPoppinsRegular.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
