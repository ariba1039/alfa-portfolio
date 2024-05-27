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
  static const String mobilePhoto = 'assets/photos/awc-circle.png';
  static const String mobilePhotoBw = 'assets/photos/alfawhocodes_bw.jpg';
  static const String coloredPhoto = 'assets/photos/colored.jpg';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String logoWhite = 'assets/photos/AWC.png';

  // workw
  static const String flutter = 'assets/work/flutter.png';
  static const String as = 'assets/work/as.png';
  static const String net = 'assets/work/net.png';
  static const String nodejs = 'assets/work/nodejs.png';
  static const String prpro = 'assets/work/prpro.png';
  static const String xcode = 'assets/work/xcode.png';
  static const String react = 'assets/work/react.webp';

  // services
  static const String service1 = 'assets/services/mobileapp.png';
  static const String service2 = 'assets/services/photography.png';
  static const String service3 = 'assets/services/videography.png';
  static const String service4 = 'assets/services/mentor.png';
  static const String service5 = 'assets/services/service5.png';
  static const String service6 = 'assets/services/programming.png';

  // services
  static const String anim1 = 'assets/services/anim1.json';
  static const String anim2 = 'assets/services/anim2.json';
  static const String anim3 = 'assets/services/anim3.json';
  static const String anim4 = 'assets/services/anim4.json';
  static const String anim5 = 'assets/services/anim5.json';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/150/twitterx--v1.png",
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
        "https://img.icons8.com/metro/208/ffffff/snapchat.png",
    "https://img.icons8.com/ios-filled/150/telegram.png"
  ];

  static const List<String> socialLinks = [
    "https://instagram.com/alfawhocodes",
    "https://github.com/alfawhocodes",
    "https://twitter.com/creative_alf",
    "https://facebook.com/sheikmohammedalfaz",
    "https://linkedin.com/in/mohammed-alfaz",
    "https://alfawhocodes.medium.com",
    "https://snapchat.com/t/Au5yaxn1",
    "https://t.me/creative_alf"
  ];

  static const String resume =
      'https://drive.google.com/file/d/13e5Mi5m6T-flvqC1QwIyfuOXq8GDkDst/view?usp=drivesdk';

  static const String gitHub = 'https://github.com/alfawhocodes';
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
  } else if (hour > 21) {
    return 'Hi, Night owl🦉';
  } else {
    return 'Hello,';
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
