import 'package:coffie/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_core/firebase_core.dart';

import 'package:coffie/screens/detail_screen.dart';
import 'package:coffie/screens/home_screen.dart';
import 'package:coffie/screens/onbording_screen.dart';
import 'package:coffie/screens/order_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB3MKb0EDefVfbz9m584AyFqAxQab5ZaP4",
        appId: "1:208936884456:web:a66441db5f20153972915d",
        messagingSenderId: "208936884456",
        projectId: "flluter-apps",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',

      routes: {
        '/login': (context) =>  LoginPage(),
        // '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
        '/order': (context) => const OrderScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        useMaterial3: true,
        fontFamily: 'Sora',
      ),
    );
  }
}
