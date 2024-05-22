import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.jpg';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String logoWhite = 'assets/photos/AWC.png';

  // workw
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://instagram.com/alfawhocodes",
    "https://github.com/alfawhocodes",
    "https://twitter.com/creative_alf",
    "https://facebook.com/sheikmohammedalfaz",
    "https://linkedin.com/in/mohammed-alfaz",
    "https://alfawhocodes.medium.com"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub = 'https://github.com/mhmzdev';
}

String getGreeting() {
  final DateTime now = DateTime.now();
  final int hour = now.hour;

  if (hour < 12) {
    return 'Hi, Good Morning ';
  } else if (hour < 17) {
    return 'Hi, Good Afternoon ';
  } else if (hour < 21) {
    return 'Hi, Good Evening ';
  } else {
    return 'Hi';
  }
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
