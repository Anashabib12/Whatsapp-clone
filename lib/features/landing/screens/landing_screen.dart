import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colore.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen (BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome to WhatsApp',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.height / 9,
          ),
          Image.asset(
            'assets/bg.png',
            width: 320,
            height: 320,
            color: tabColor,
          ),
          SizedBox(height: size.height / 9),
          const Text(
              'Read our Privacy Policy. Tap "Agree and Continue" to accept the Terms of Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              )),
          const SizedBox(height: 15),
          SizedBox(
            width: size.width*0.75,
            child: CustomButton(
              text: 'AGREE AND CONTINUE',
              onPressed: () => navigateToLoginScreen(context),
            ),
          ),
        ]),
      ),
    );
  }
}
