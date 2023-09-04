import 'package:alt/constant/app_style.dart';
import 'package:alt/constant/responsive_size.dart';
import 'package:alt/pages/account/account_page.dart';
import 'package:alt/pages/appointment/appointment_page.dart';
import 'package:alt/pages/appointment/book_appointment_page.dart';
import 'package:alt/pages/help/help_page.dart';
import 'package:alt/pages/home/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void home() {
  runApp(const BottomAppBar());
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // This widget is the root of your application.
  int currentPageIndex = 0;
  var appBarHeight = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          destinations: [
            NavigationDestination(
              icon: currentPageIndex == 0
                  ? SvgPicture.asset(
                      'icons/home_selected.svg',
                      height: 24,
                    )
                  : SvgPicture.asset(
                      'icons/home.svg',
                      height: 20,
                    ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: currentPageIndex == 1
                  ? SvgPicture.asset(
                      'icons/appointment_selected.svg',
                    )
                  : SvgPicture.asset(
                      'icons/appointment.svg',
                    ),
              label: 'Appointment',
            ),
            NavigationDestination(
              icon: currentPageIndex == 2
                  ? SvgPicture.asset(
                      'icons/help_selected.svg',
                    )
                  : SvgPicture.asset(
                      'icons/help.svg',
                    ),
              label: 'Help',
            ),
            NavigationDestination(
              icon: currentPageIndex == 3
                  ? SvgPicture.asset(
                      'icons/account_selected.svg',
                    )
                  : SvgPicture.asset(
                      'icons/account.svg',
                    ),
              label: 'Account',
            ),
          ],
          backgroundColor: Colors.white,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(
              () {
                currentPageIndex = index;
              },
            );
          },
          indicatorColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const BookAppointmentPage()),
            );
          },
          label: Text(
            'Book new\nappointment',
            style: kPoppinsRegular.copyWith(
              fontSize: SizeCofig.blockSizeHorizontal! * 3,
              color: kDarkBlue,
            ),
          ),
          backgroundColor: kLightGreen,
          elevation: 0,
        ),
        body: const [
          HomePage(),
          AppointmentPage(),
          HelpPage(),
          AccountPage()
        ][currentPageIndex],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
