part of '../main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
            child: Expanded(
                child: Image(
          image: AssetImage('assets/logo.png'),
          height: 200,
          width: 200,
        ))),
        backgroundColor: Colors.black,
        nextScreen: WelcomeScreen());
  }
}
