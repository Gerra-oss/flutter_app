import 'package:flutter/material.dart';

class LargeDevice extends StatelessWidget {
  const LargeDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("sample daa here for large device"),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
