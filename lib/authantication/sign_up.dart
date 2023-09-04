import 'package:alt/authantication/login_page.dart';
import 'package:alt/authantication/otp_form.dart';

import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/constant_text_form_field.dart';

import 'package:alt/constant/responsive_size.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final _formKey = GlobalKey<FormState>();
bool showHidePassword = true;

bool validPassword(String password, [int minLength = 8]) {
  if (password.length < minLength) {
    return false;
  }

  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  if (hasUppercase) {
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    if (hasDigits) {
      bool hasLowercase = password.contains(RegExp(r'[a-z]'));
      if (!hasLowercase) {
        bool hasSpecialCharacters =
            password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
        return hasSpecialCharacters;
      }
    }
  }

  return false;
}

TextEditingController password = TextEditingController();
TextEditingController confirmpassword = TextEditingController();

class _SignUpState extends State<SignUp> {
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
                'assets/06.svg',
                width: 196,
                height: 196,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Create your Account",
                style: kPoppinsBold.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 4,
                  color: kDarkBlue,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "A login form utilizes the credentials of a user, in order to authenticate their access",
                textAlign: TextAlign.center,
                style: kPoppinsRegular.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 2.8,
                  color: kGrey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const FormContainer(
                      textForm: TextForm(
                          text: false,
                          formText: 'Enter full Name',
                          formIcon: Icon(
                            Icons.person,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.name),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FormContainer(
                      textForm: TextForm(
                          text: false,
                          formText: 'Enter phone no',
                          formIcon: Icon(
                            Icons.call,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.phone),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FormContainer(
                      textForm: TextForm(
                          text: false,
                          formText: 'Enter email',
                          formIcon: Icon(
                            Icons.email,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.emailAddress),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FormContainer(
                      textForm: TextForm(
                          text: true,
                          formText: 'Enter password',
                          formIcon: Icon(
                            Icons.password,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.text),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FormContainer(
                      textForm: TextForm(
                          text: true,
                          formText: 'Confirm password',
                          formIcon: Icon(
                            Icons.password,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.text),
                    ),
                    const SizedBox(
                      height: 20,
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
                                builder: (context) => const OtpPage(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Signup",
                          style: kPoppinsSemiBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have account ",
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
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: Text(
                            "Login",
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
