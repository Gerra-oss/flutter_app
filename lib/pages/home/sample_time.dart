import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SampleTime extends StatefulWidget {
  const SampleTime({super.key});

  @override
  State<SampleTime> createState() => _SampleTimeState();
}

class _SampleTimeState extends State<SampleTime> {
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  TextEditingController dateinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker on TextField"),
        backgroundColor: Colors.redAccent, //background color of app bar
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: 150,
        child: Center(
          child: TextFormField(
            controller: dateinput, //editing controller of this TextField
            decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), //icon of text field
                labelText: "Enter Date" //label text of field
                ),
            readOnly:
                true, //set it true, so that user will not able to edit text
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(
                      2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));

              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

                setState(() {
                  dateinput.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
        ),
      ),
    );
  }
}
