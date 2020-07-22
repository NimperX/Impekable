import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:impekable/screens/InitPage.dart';
import 'package:impekable/screens/mainmenu.dart';
import 'package:impekable/screens/signin.dart';
import 'package:impekable/screens/signinCustomer.dart';
import 'package:impekable/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft])
      .then((_) {
        runApp(MaterialApp(
          theme: ThemeData(fontFamily: 'Source Sans Pro'),
          home:SplashScreen(),
          routes:{
            '/signin': (context) => SignIn(),
            '/initpage': (context) => InitPage(),
            '/mainmenu': (context) => MainMenu(),
            '/signincustomer': (context) => SignInCustomer()
          }
        ));
      });
}

