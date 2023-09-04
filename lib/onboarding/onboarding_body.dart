import 'package:alt/authantication/login_page.dart';
import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/general_constants.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:alt/onboarding/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MobileDevice extends StatefulWidget {
  const MobileDevice({super.key});

  @override
  State<MobileDevice> createState() => _MobileDeviceState();
}

class _MobileDeviceState extends State<MobileDevice> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dipose();
  // }

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        // leading: const BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '',
          style: TextStyle(color: primaryColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: content.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          content[i].image,
                          height: 300,
                          width: SizeCofig.screenWidth,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          content[i].title,
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 4,
                            color: kDarkBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          content[i].description,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: kPoppinsRegular.copyWith(
                            fontSize: SizeCofig.blockSizeHorizontal! * 2.8,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              content.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.all(64),
            width: 196,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kdarkGreen,
            ),
            child: DefaultButton(
                currentIndex: currentIndex, controller: _controller),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      width: currentIndex == index ? 24 : 16,
      height: 16,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? kdarkGreen : kGrey,
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.currentIndex,
    required PageController controller,
  }) : _controller = controller;

  final int currentIndex;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (currentIndex == content.length - 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const LoginPage(),
            ),
          );
        }
        _controller.nextPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.bounceIn);
      },
      child: Text(
        currentIndex == content.length - 1 ? "Continue" : "Next",
        style: kPoppinsBold.copyWith(
          fontSize: SizeCofig.blockSizeHorizontal! * 2.6,
          color: kWhite,
        ),
      ),
    );
  }
}
