import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextForm extends StatefulWidget {
  const PasswordTextForm({
    super.key,
    this.formText,
    this.textInputType,
    required this.errorText,
    required this.errorTextValidator,
    required void Function() onChanged,
    required this.validator,
    this.textFormater,
  });
  final String? formText;

  final TextInputType? textInputType;

  final RegExp validator;
  final TextInputFormatter? textFormater;

  final String? errorText;
  final String? errorTextValidator;

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  TextEditingController password = TextEditingController();

  bool showHidePassword = true;

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
      prefixIcon: prefixIcon(),
    );
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.errorText;
        }
        bool emailValid = widget.validator.hasMatch(value);

        if (!emailValid) {
          return widget.errorTextValidator;
        }
        return null;
      },
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      controller: password,
      obscureText: showHidePassword,
      obscuringCharacter: '*',
      keyboardType: widget.textInputType,
      decoration: inputDecoration,
      style: kPoppinsRegular.copyWith(
        fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
        color: kDefaultIconDarkColor,
      ),
    );
  }

//prefix icon
  IconButton prefixIcon() {
    return IconButton(
      onPressed: () {
        setState(() {
          if (showHidePassword) {
            //if showHidePassword == true, make it false
            showHidePassword = false;
          } else {
            showHidePassword =
                true; //if showHidePassword == false, make it true
          }
        });
      },
      icon: Icon(
        showHidePassword == true
            ? Icons.remove_red_eye
            : Icons.lock_outline_rounded,
        color: kdarkGreen,
      ),
    );
  }
}
