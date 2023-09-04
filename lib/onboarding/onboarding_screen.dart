import 'package:alt/constant/responsive_size.dart';
import 'package:alt/onboarding/large_device.dart';
import 'package:alt/onboarding/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardinScreen extends StatelessWidget {
  const OnboardinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        largeDevice: LargeDevice(),
        mobileDevice: MobileDevice(),
      ),
    );
  }
}
