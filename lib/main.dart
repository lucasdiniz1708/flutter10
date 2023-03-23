import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:io';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:http/http.dart' as http;
import '../stores/counter.dart';
part 'pages/Home.dart';
part 'pages/Sobre.dart';
part 'pages/Check.dart';
part 'pages/Questoes.dart';
part 'pages/Menu.dart';
part 'pages/Welcome.dart';
part 'pages/Splash.dart';
part 'pages/Teste.dart';

final counter = Counter();

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/sobre': (context) => SobreScreen(title: 'Coordenadas'),
        '/check': ((context) => CheckScreen()),
        '/quest': ((context) => QuestionScreen()),
        '/menu': ((context) => MenuScreen()),
        '/welcome': ((context) => WelcomeScreen()),
        '/splash': (((context) => SplashScreen())),
        '/teste': (((context) => TestePage())),
      },
      initialRoute: '/splash',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green,
          appBarTheme: AppBarTheme(color: Colors.green)),
    );
  }
}
