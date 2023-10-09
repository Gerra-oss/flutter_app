import 'package:alt/bottom_bar.dart';
import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/constant_text_form_field.dart';
import 'package:alt/constant/date_picker.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:date_field/date_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key});

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

const List<String> list = <String>[
  '',
  'Software',
  'Customer care',
  'Marketing',
  'Accounts'
];

final _formKey = GlobalKey<FormState>();
String? txtHint;

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const BottomBar()),
            );
          },
          icon: SvgPicture.asset(
            'icons/arrow-back.svg',
          ),
        ),
        centerTitle: true,
        title: Text(
          'Book an appointment',
          style: kPoppinsBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 4,
            color: kDarkBlue,
          ),
        ),
        backgroundColor: kWhite,
        surfaceTintColor: kWhite,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: SizeCofig.screenHeight! * 0.85,
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Appointment Title',
                                      style: kPoppinsBold.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 3,
                                        color: kDarkBlue,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Appointment Address and Zip code',
                                      style: kPoppinsMedium.copyWith(
                                        fontSize:
                                            SizeCofig.blockSizeHorizontal! * 3,
                                        color: kGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Select Ctegory',
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 2.7,
                                    color: kDarkBlue,
                                  ),
                                ),
                              ],
                            ),
                            categoryPicker(),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Select Date',
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 2.7,
                                    color: kDarkBlue,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FormContainerDatePicker(
                              textForm: DateForm(
                                dateType: DateTimeFieldPickerMode.date,
                                formText: 'Select Date',
                                erroText: 'Date can not be empty or past',
                                formIcon: const Icon(
                                  Icons.calendar_month,
                                  color: kdarkGreen,
                                ),
                                textInputType: TextInputType.datetime,
                                text: false,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const HorizontalData(
                              rightColor: kDarkBlue,
                              leftText: 'Select start time',
                              rightText: 'Select end time',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FormContainerTimePicker(
                                  textForm: DateForm(
                                    dateType: DateTimeFieldPickerMode.time,
                                    erroText: 'Start time can not be empty',
                                    formText: 'Start Time',
                                    formIcon: const Icon(
                                      Icons.timer,
                                      color: kdarkGreen,
                                    ),
                                    textInputType: TextInputType.datetime,
                                    text: false,
                                  ),
                                ),
                                FormContainerTimePicker(
                                  textForm: DateForm(
                                    dateType: DateTimeFieldPickerMode.time,
                                    erroText: 'Specify end time',
                                    formText: 'End Time',
                                    formIcon: const Icon(
                                      Icons.timelapse,
                                      color: kdarkGreen,
                                    ),
                                    textInputType: TextInputType.datetime,
                                    text: false,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            FormContainer(
                              textForm: TextForm(
                                textFormater: FilteringTextInputFormatter.allow(
                                  RegExp(r"[a-zA-Z]+|\s"),
                                ),
                                errorTextValidator: '',
                                validator: RegExp(r"[a-zA-Z]+|\s"),
                                controller: TextEditingController(),
                                onChanged: () {},
                                errorText: 'Appointment purpose is required',
                                text: false,
                                textInputType: TextInputType.text,
                                formText: 'Enter appointment purpose',
                                formIcon: const Icon(
                                  Icons.note_add,
                                  color: kdarkGreen,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: SizeCofig.screenHeight! / 20,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: kLightGreen,
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('icons/info.svg'),
                                  Text(
                                    'Complete all your Detail before continuing',
                                    style: kPoppinsRegular.copyWith(
                                      fontSize:
                                          SizeCofig.blockSizeHorizontal! * 3,
                                      color: kDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Container(
                              height: SizeCofig.screenHeight! / 14,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: kLightGreen,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('data saved'),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Book an appointment',
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeCofig.blockSizeHorizontal! * 4,
                                    color: kDarkBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }

  DropdownButtonFormField<String> categoryPicker() {
    return DropdownButtonFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select category';
        }
        return null;
      },
      hint: Text(
        'Choose Category',
        style: kPoppinsRegular.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
          color: kGrey,
        ),
      ),
      style: kPoppinsRegular.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 3, color: kDarkBlue),
      iconEnabledColor: kdarkGreen,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.category,
          color: kdarkGreen,
        ),
        border: UnderlineInputBorder(
          borderSide: const BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.all(20),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: kLightGreen,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kBorderColor,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kBorderColor,
          ),
        ),
      ),
      value: dropdownValue,
      items: list.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(
          () {
            dropdownValue = value.toString();
          },
        );
      },
    );
  }
}

class HorizontalData extends StatelessWidget {
  const HorizontalData({
    super.key,
    required this.leftText,
    required this.rightText,
    required this.rightColor,
  });
  final String? leftText;
  final String? rightText;
  final Color? rightColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText!,
          style: kPoppinsSemiBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 3,
            color: kDarkBlue,
          ),
        ),
        Text(
          rightText!,
          style: kPoppinsSemiBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
            color: rightColor,
          ),
        ),
      ],
    );
  }
}
