//date picker form

import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';

class FormContainerDatePicker extends StatelessWidget {
  const FormContainerDatePicker({
    super.key,
    required this.textForm,
  });
  final Widget textForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: SizeCofig.screenWidth! * 0.40,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: kBorderColor),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: textForm,
    );
  }
}

//date picker
class DateForm extends StatelessWidget {
  const DateForm({
    super.key,
    required this.formText,
    required this.formIcon,
    required this.textInputType,
    required this.text,
  });
  final String formText;
  final Icon? formIcon;
  final TextInputType? textInputType;
  final bool text;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        hintText: formText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 48,
          vertical: 14,
        ),
        prefixIcon: formIcon);
    return Form(
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: text,
        keyboardType: textInputType,
        decoration: inputDecoration,
        style: kPoppinsBold.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
          color: kDefaultIconDarkColor,
        ),
      ),
    );
  }
}
