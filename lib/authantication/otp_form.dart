import 'package:alt/authantication/sign_up.dart';
import 'package:alt/bottom_bar.dart';
import 'package:alt/constant/app_style.dart';

import 'package:alt/constant/responsive_size.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

final _formKey = GlobalKey<FormState>();
bool showHidePassword = true;
OtpFieldController otpController = OtpFieldController();

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/08.svg',
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "One-Time Passcode Verification OTP",
                style: kPoppinsBold.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 3.6,
                  color: kDarkBlue,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "we sent it to you phone number if you have not received check your email.",
                textAlign: TextAlign.center,
                style: kPoppinsRegular.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                  color: kGrey,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    OTPTextField(
                      obscureText: true,
                      controller: otpController,
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 36,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onChanged: (value) {},
                    ),
                    Container(
                      height: 48,
                      margin: const EdgeInsets.all(40),
                      width: 196,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kdarkGreen,
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomBar(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Verify",
                          style: kPoppinsSemiBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 3,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Read our ",
                          style: kPoppinsRegular.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                            color: kGrey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: Text(
                            "Privacy",
                            style: kPoppinsRegular.copyWith(
                              fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                              color: kdarkGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
