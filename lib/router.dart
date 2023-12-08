// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/error_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
// import 'package:whatsapp_clone/features/auth/screens/user_information_screen.dart';
// import 'package:whatsapp_clone/widgets/contact_list.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case OTPScreen.routeName:
    final verificationId = settings.arguments as String;
      return MaterialPageRoute(builder: (context) =>  OTPScreen(
        verificationId: verificationId,
      ));
      case MobileScreenLayout.routeName:
      return MaterialPageRoute(builder: (context) => const MobileScreenLayout());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(error: 'this page does not exist'),
              ));
  }
}
