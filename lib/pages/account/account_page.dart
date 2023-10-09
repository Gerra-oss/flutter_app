import 'package:alt/bottom_bar.dart';
import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          surfaceTintColor: kWhite,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BottomBar()),
              );
            },
            icon: SvgPicture.asset(
              'icons/arrow-back.svg',
              width: SizeCofig.blockSizeHorizontal! * 5,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'icons/edit.svg',
                width: SizeCofig.blockSizeHorizontal! * 5,
              ),
            ),
          ],
        ),
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeCofig.screenHeight! * 0.9,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                  vertical: 26,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kLightWhite,
                          radius: 34,
                          child: SvgPicture.asset(
                            'icons/profile.svg',
                            width: SizeCofig.screenWidth! * 16,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: kPoppinsBold.copyWith(
                                fontSize: SizeCofig.blockSizeHorizontal! * 4,
                                color: kDarkBlue,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'System Analytics',
                              style: kPoppinsMedium.copyWith(
                                fontSize: SizeCofig.blockSizeHorizontal! * 3,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Column(
                      children: [
                        ContactDetails(
                          contactIcon: Icon(
                            Icons.call,
                            color: kGrey,
                          ),
                          locationIcon: Icon(
                            Icons.location_on,
                            color: kGrey,
                          ),
                          contactText: '+255 7002 980 101',
                          locationText: 'Tanzania',
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ContactDetails(
                          contactIcon: Icon(
                            Icons.mail,
                            color: kGrey,
                          ),
                          locationIcon: Icon(
                            Icons.web_asset_rounded,
                            color: kGrey,
                          ),
                          contactText: 'doe@mail.com',
                          locationText: 'www.me.com',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 0.15,
                            color: kGreyWhite,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const ContactStatisticsData(
                            headerText: '178',
                            bodyText: 'Booked',
                            textHeaderColor: kDarkBlue,
                            textBodyColor: kGrey,
                          ),
                          dividerContainer(),
                          const ContactStatisticsData(
                            headerText: '42',
                            bodyText: 'Attended',
                            textHeaderColor: kDarkBlue,
                            textBodyColor: kGrey,
                          ),
                          dividerContainer(),
                          const ContactStatisticsData(
                            headerText: '4',
                            bodyText: 'Cancelled',
                            textHeaderColor: kDarkBlue,
                            textBodyColor: kGrey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        AccountLinks(
                          linkIcon: SvgPicture.asset('icons/heart.svg'),
                          linkText: 'Your favourites',
                        ),
                        AccountLinks(
                          linkIcon: SvgPicture.asset('icons/users-alt.svg'),
                          linkText: 'Tell Your Friends',
                        ),
                        AccountLinks(
                          linkIcon: SvgPicture.asset('icons/tags.svg'),
                          linkText: 'Promotions',
                        ),
                        AccountLinks(
                          linkIcon: SvgPicture.asset('icons/settings.svg'),
                          linkText: 'Settings',
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 200),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'icons/logout-back.svg',
                                width: 28,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    dividerContainerHorizontal(),
                    const SizedBox(
                      height: 20,
                    ),
                    AccountLinks(
                      linkIcon: SvgPicture.asset('icons/logout.svg'),
                      linkText: 'Log out',
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

  Container dividerContainer() {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(
            width: 0.15,
            color: kGreyWhite,
          ),
        ),
      ),
    );
  }

  Container dividerContainerHorizontal() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 0.15,
            color: kGreyWhite,
          ),
        ),
      ),
    );
  }
}

class AccountLinks extends StatelessWidget {
  const AccountLinks({
    super.key,
    required this.linkText,
    required this.linkIcon,
  });
  final String linkText;
  final Widget linkIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Row(
            children: [
              linkIcon,
              const SizedBox(
                width: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  linkText,
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeCofig.blockSizeHorizontal! * 3,
                    color: kDarkBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ContactStatisticsData extends StatelessWidget {
  const ContactStatisticsData({
    super.key,
    required this.headerText,
    required this.bodyText,
    required this.textHeaderColor,
    required this.textBodyColor,
  });
  final String headerText;
  final String bodyText;
  final Color textHeaderColor;
  final Color textBodyColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          headerText,
          style: kPoppinsBold.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 3,
            color: textHeaderColor,
          ),
        ),
        Text(
          bodyText,
          style: kPoppinsRegular.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 2.5,
            color: textBodyColor,
          ),
        ),
      ],
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    super.key,
    required this.contactIcon,
    required this.contactText,
    required this.locationText,
    required this.locationIcon,
  });
  final Icon contactIcon;
  final Icon locationIcon;
  final String contactText;
  final String locationText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contactIcon,
        Text(
          contactText,
          style: kPoppinsRegular.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 3,
            color: kGrey,
          ),
        ),
        locationIcon,
        Text(
          locationText,
          style: kPoppinsRegular.copyWith(
            fontSize: SizeCofig.blockSizeHorizontal! * 3,
            color: kGrey,
          ),
        ),
      ],
    );
  }
}
