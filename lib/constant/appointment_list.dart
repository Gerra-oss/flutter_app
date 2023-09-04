import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentList extends StatelessWidget {
  const AppointmentList({super.key});

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeCofig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: kPaddingHorizontal,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kLighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPaddingHorizontal,
                        vertical: 60,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'icons/back.svg',
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'icons/bookmark.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                "Appointment Details.",
                style: kPoppinsBold.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 5,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
                vertical: 20,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(color: kBorderColor),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                  ),
                  SizedBox(
                    width: SizeCofig.blockSizeHorizontal! * 2.5,
                  ),
                  Text(
                    "Appointment Summary.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                "All Rights reserved. No part of this publication may be reproduced or transmitted in any"
                "form or by any means electronic, mechanical, photocopying, recording, or otherwise,"
                "without the prior written permission of Marcus Santamaria. Perhaps you have modest goals and you are only aiming to get by in Spanish next time you travel\n\n"
                "to a Spanish speaking county. Maybe, you have Latino friends you want to communicate with in"
                "Spanish. You may even have a more serious goal of completely mastering the Spanish language. ",
                textAlign: TextAlign.justify,
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeCofig.blockSizeHorizontal! * 4,
                  color: kDarkBlue,
                ),
              ),
            ),
            SizedBox(
              height: SizeCofig.blockSizeVertical! * 7,
            )
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'assets/01.svg',
  'assets/02.svg',
  'assets/03.svg',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _currentIdex = 1;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeCofig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIdex = index;
                },
              );
            },
            initialPage: _currentIdex,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: SvgPicture.asset(
                    item,
                    fit: BoxFit.cover,
                    height: SizeCofig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: SvgPicture.asset(
                          _currentIdex == entry.key
                              ? 'icons/home.svg'
                              : 'icons/history.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
