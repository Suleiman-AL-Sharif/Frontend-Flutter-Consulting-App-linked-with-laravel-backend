import '../log_in/FirstRoute.dart';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/splash.jpg'),
      logoWidth: 150,
      backgroundColor: Colors.deepPurple,
      durationInSeconds: 4,
      navigator: const FirstRoute(),
      showLoader: true,
      loadingText: const Text("Loading..."),
    );
  }
}
