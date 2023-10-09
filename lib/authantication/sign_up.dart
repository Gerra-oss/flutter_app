import 'package:alt/authantication/login_page.dart';
import 'package:alt/authantication/otp_form.dart';
import 'package:alt/authantication/passwor_form_text.dart';
import 'package:alt/authantication/phone_number_form.dart';

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
                    FormContainer(
                      textForm: TextForm(
                          errorTextValidator: 'Please Enter Valid Name',
                          validator: RegExp(
                              r"^\s*([A-Za-z]{4,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"),
                          controller: TextEditingController(),
                          onChanged: () {},
                          errorText: 'Full Name is Required',
                          text: false,
                          formText: 'Full Name',
                          formIcon: const Icon(
                            Icons.person,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.name),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormContainer(
                      textForm: PhoneTextForm(
                          errorTextValidator: 'Please Enter Valid Phone No',
                          validator: RegExp(r"^\+?0[0-9]{10}$"),
                          controller: TextEditingController(),
                          onChanged: () {},
                          errorText: 'Phone Number is Required',
                          formText: 'Enter Phone No',
                          formIcon: const Icon(
                            Icons.call,
                            color: kdarkGreen,
                          ),
                          textInputType: TextInputType.phone),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormContainer(
                      textForm: TextForm(
                        errorTextValidator: 'Please Enter Valid Email',
                        validator: RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                        controller: TextEditingController(),
                        onChanged: () {},
                        errorText: 'Email is Required',
                        text: false,
                        formText: 'Enter Email',
                        formIcon: const Icon(
                          Icons.email,
                          color: kdarkGreen,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormContainer(
                      textForm: PasswordTextForm(
                        errorTextValidator: '',
                        validator: RegExp(''),
                        onChanged: () {},
                        errorText: 'Password is Required',
                        formText: 'Enter Password',
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormContainer(
                      textForm: PasswordTextForm(
                        errorTextValidator: '',
                        validator: RegExp(''),
                        onChanged: () {},
                        errorText: 'Password Should Match',
                        formText: 'Confirm Password',
                        textInputType: TextInputType.visiblePassword,
                      ),
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
                          "Sign Up",
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
                          "Have Account ",
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
