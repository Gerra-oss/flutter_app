import 'package:flutter/material.dart';

//app colors
const primaryColor = Color(0xFFFF7643);
const primaryColorLight = Color(0xFFFFECDF);
const primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA43E), Color(0XFFFF7843)]);
const secondaryColor = Color(0xFF979797);
const textColor = Color(0xFF757575);
const animationDuration = Duration(milliseconds: 400);

// email validation
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please enter valid Email";
const String passwordNullError = "Please enter password";
const String shortPasswordError = "Password is too short";
const String matchPasswordError = "Password should match";

//devive width
const mobileWidth = 600;
