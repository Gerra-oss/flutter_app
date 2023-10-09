import 'package:alt/authantication/forget_password.dart';
import 'package:alt/authantication/passwor_form_text.dart';
import 'package:alt/authantication/sign_up.dart';
import 'package:alt/bottom_bar.dart';
import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/constant_text_form_field.dart';

import 'package:alt/constant/responsive_size.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/05.svg',
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Login To Continue",
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
                  fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
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
                    //email input form
                    FormContainer(
                      textForm: TextForm(
                        errorTextValidator: 'Please Enter Valid Email',
                        validator: RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                        controller: TextEditingController(),
                        onChanged: () {},
                        errorText: 'Email is Required',
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

                    //password input form
                    FormContainer(
                      textForm: PasswordTextForm(
                        errorTextValidator: 'Pllease Enter Valid Password',
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
                    Text(
                      'OR',
                      style: kPoppinsMedium.copyWith(
                        fontSize: SizeCofig.blockSizeHorizontal! * 3.5,
                        color: kGrey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: kPoppinsMedium.copyWith(
                          fontSize: SizeCofig.blockSizeHorizontal! * 3.5,
                          color: kGrey,
                        ),
                      ),
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
                          "Login",
                          style: kPoppinsBold.copyWith(
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
                          "Don't have Account ",
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
                            "Sign Up",
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
