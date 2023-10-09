import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneTextForm extends StatefulWidget {
  final TextEditingController? controller;
  const PhoneTextForm({
    super.key,
    this.formText,
    this.formIcon,
    this.textInputType,
    required this.errorText,
    required this.errorTextValidator,
    required void Function() onChanged,
    required this.controller,
    required this.validator,
    this.textFormater,
  });
  final String? formText;
  final Icon? formIcon;
  final TextInputType? textInputType;

  final RegExp validator;
  final TextInputFormatter? textFormater;

  final String? errorText;
  final String? errorTextValidator;

  @override
  State<PhoneTextForm> createState() => _PhoneTextFormState();
}

class _PhoneTextFormState extends State<PhoneTextForm> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        hintText: widget.formText,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.all(20),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: kLightGreen),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kBorderColor)),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kBorderColor)),
        prefixIcon: widget.formIcon);
    return IntlPhoneField(
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      flagsButtonMargin: const EdgeInsets.only(bottom: 20),
      focusNode: focusNode,
      initialCountryCode: 'TZ',
      dropdownIcon: const Icon(
        Icons.arrow_drop_down_circle_sharp,
        color: kdarkGreen,
      ),
      pickerDialogStyle: PickerDialogStyle(
        backgroundColor: kWhite,
        countryNameStyle: kPoppinsRegular.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
          color: kDefaultIconDarkColor,
        ),
        countryCodeStyle: kPoppinsRegular.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
          color: kDefaultIconDarkColor,
        ),
        searchFieldCursorColor: kDarkBlue,
      ),
      decoration: inputDecoration,
      style: kPoppinsRegular.copyWith(
        fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
        color: kDefaultIconDarkColor,
      ),
    );
  }
}

//pasword form
