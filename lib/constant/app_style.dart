import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kWhite = Color(0xffffffff);
const Color kLightWhite = Color(0xffeff5f4);
const Color kLighterWhite = Color(0xedededff);
const Color kWhiteGrey = Color(0xf6f6f6f9);

const Color kGrey = Color(0xff9397a0);
const Color kGreyWhite = Color(0xffD3D3D3);
const Color kLightGrey = Color(0xffa7a7a7);
const Color kGreen = Color.fromARGB(255, 208, 237, 208);
const Color kBorderColor = Color(0xffeeeeee);
const Color kdarkGreen = Color(0xff49a12d);

const Color kBlue = Color(0xff5474fd);
const Color kLightBlue = Color(0xff83b1ff);
const Color kLighterBlue = Color(0xff29389d);
const Color kLightGreen = Color(0xffe2f0dd);
const Color kWhiteBlue = Color(0xff101d77);

const Color kDarkBlue = Color(0xff19202d);

const double kBorderRadius = 16.0;
const double kPaddingHorizontal = 40.0;

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  gapPadding: 8,
  borderSide: BorderSide.none,
);

final kPoppinsBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w700,
);

final kPoppinsSemiBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w600,
);

final kPoppinsMedium = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w400,
);
