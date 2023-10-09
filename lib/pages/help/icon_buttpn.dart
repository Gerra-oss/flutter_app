import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';

class DetailStatisticsData extends StatefulWidget {
  const DetailStatisticsData({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.textHeaderColor,
    required this.textBodyColor,
    required this.leftIcon,
  });
  final String headerText;
  final String bodyText;
  final Color textHeaderColor;
  final Color textBodyColor;
  final Icon leftIcon;

  @override
  State<DetailStatisticsData> createState() => _DetailStatisticsDataState();
}

class _DetailStatisticsDataState extends State<DetailStatisticsData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: widget.leftIcon),
            Text(
              widget.headerText,
              style: kPoppinsBold.copyWith(
                fontSize: SizeCofig.blockSizeHorizontal! * 2.8,
                color: widget.textHeaderColor,
              ),
            ),
          ],
        ),
        Text(
          widget.bodyText,
          style: kPoppinsRegular.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 2.5,
            color: widget.textBodyColor,
          ),
        ),
      ],
    );
  }
}
