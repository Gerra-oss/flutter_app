//date picker form

import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:date_field/date_field.dart';
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
      width: SizeCofig.screenWidth!,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
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

// time picker
class FormContainerTimePicker extends StatelessWidget {
  const FormContainerTimePicker({
    super.key,
    required this.textForm,
  });
  final Widget textForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: SizeCofig.screenWidth! * 0.43,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
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
  DateForm({
    super.key,
    required this.formText,
    required this.formIcon,
    required this.textInputType,
    required this.text,
    required this.dateType,
    required this.erroText,
  });
  final String formText;
  final String erroText;
  final Icon? formIcon;
  final TextInputType? textInputType;
  final bool text;
  final DateTimeFieldPickerMode dateType;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      hintText: formText,
      hintStyle: kPoppinsRegular.copyWith(
        fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
      ),
      border: UnderlineInputBorder(
        borderSide: const BorderSide(color: kBorderColor),
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.only(
        bottom: 2,
        top: 16,
      ),
      prefixIcon: formIcon,
      focusedBorder: UnderlineInputBorder(
        borderSide: const BorderSide(color: kLightGreen),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: kBorderColor,
        ),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: kBorderColor),
      ),
    );
    return Form(
      key: _formKey,
      child: DateTimeFormField(
        validator: (value) {
          if (value == null || value.day.isNaN || value.hour.isNaN) {
            return erroText;
          }
          return null;
        },
        decoration: inputDecoration,
        mode: dateType,
        initialTimePickerEntryMode: TimePickerEntryMode.dialOnly,
        dateTextStyle: kPoppinsRegular.copyWith(
          color: kDarkBlue,
          fontSize: SizeCofig.blockSizeHorizontal! * 3,
        ),
        autovalidateMode: AutovalidateMode.always,
        initialDate: DateTime.now().add(const Duration(
          days: 0,
          hours: 0,
        )),
        firstDate: DateTime.now().add(const Duration(
          days: 0,
          hours: 0,
        )),
        initialEntryMode: DatePickerEntryMode.calendar,
        use24hFormat: true,
      ),
    );
  }
}
