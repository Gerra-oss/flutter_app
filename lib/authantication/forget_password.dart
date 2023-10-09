import 'package:alt/authantication/login_page.dart';
import 'package:alt/authantication/otp_form.dart';
import 'package:alt/authantication/passwor_form_text.dart';

import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/constant_text_form_field.dart';

import 'package:alt/constant/responsive_size.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final _formKey = GlobalKey<FormState>();

class _ForgotPasswordState extends State<ForgotPassword> {
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
                'assets/04.svg',
                width: 30,
                height: 300,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Forget Password",
                style: kPoppinsBold.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 4,
                  color: kDarkBlue,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "A login form utilizes the credentials of a user, in order to authenticate their access",
                textAlign: TextAlign.center,
                style: kPoppinsRegular.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
                  color: kGrey,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    FormContainer(
                      textForm: TextForm(
                        errorTextValidator: 'Please Enter Valid Email',
                        validator: RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                        controller: TextEditingController(),
                        onChanged: () {},
                        errorText: 'Email is 3Required',
                        text: false,
                        textInputType: TextInputType.emailAddress,
                        formText: 'Enter Email',
                        formIcon: const Icon(
                          Icons.email,
                          color: kdarkGreen,
                        ),
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
                        textInputType: TextInputType.visiblePassword,
                        formText: 'Enter Password',
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
                        textInputType: TextInputType.visiblePassword,
                        formText: 'Confirm Password',
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 48,
                      margin: const EdgeInsets.only(top: 4),
                      width: 196,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
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
                          "Change Password",
                          style: kPoppinsSemiBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 3,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have Password ",
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
