import 'package:flutter/material.dart';
import 'package:alt/constant/general_constants.dart';


class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.largeDevice, required this.mobileDevice});
  final Widget mobileDevice;
  final Widget largeDevice;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileDevice;
      } else {
        return largeDevice;
      }
    });
  }
}

class SizeCofig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}
