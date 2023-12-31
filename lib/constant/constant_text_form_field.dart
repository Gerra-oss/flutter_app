import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({super.key, required this.textForm});
  final Widget textForm;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        width: SizeCofig.screenWidth! * 0.93,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: textForm);
  }
}

//text input type

class TextForm extends StatelessWidget {
  final TextEditingController? controller;
  const TextForm({
    super.key,
    this.formText,
    this.formIcon,
    this.textInputType,
    this.text,
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
  final bool? text;
  final RegExp validator;
  final TextInputFormatter? textFormater;

  final String? errorText;
  final String? errorTextValidator;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        hintText: formText,
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
        prefixIcon: formIcon);
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        bool emailValid = validator.hasMatch(value);

        if (!emailValid) {
          return errorTextValidator;
        }
        return null;
      },
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      obscuringCharacter: '*',
      obscureText: text!,
      keyboardType: textInputType,
      decoration: inputDecoration,
      style: kPoppinsRegular.copyWith(
        fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
        color: kDefaultIconDarkColor,
      ),
    );
  }
}

//pasword form
