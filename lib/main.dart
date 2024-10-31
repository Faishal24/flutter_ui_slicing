import 'package:flutter/material.dart';
import 'package:flutter_tugas_2/screens/forget_pwd_screen.dart';
import 'package:flutter_tugas_2/screens/login_screen.dart';
import 'package:flutter_tugas_2/screens/main_screen.dart';
import 'package:flutter_tugas_2/screens/register_screen.dart';
import 'package:flutter_tugas_2/screens/settings_screen.dart';
import 'package:flutter_tugas_2/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tugas_2/provider/navigation_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NavigationModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tugas 2 | VelocityX Framework',
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => MainScreen(),
          '/settings': (context) => SettingsScreen(),
          '/forget-password': (context) => ForgetPwdScreen(),
        });
  }
}
