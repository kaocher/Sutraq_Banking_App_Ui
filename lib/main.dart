import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/ui/views/auth_screen/forgot_password_screen.dart';
import 'package:sutraq/ui/views/auth_screen/login_screen.dart';
import 'package:sutraq/ui/views/dashboard_screen/dash_board_screen.dart';
import 'package:sutraq/ui/views/splash_screen/splash_screen.dart';
import 'package:sutraq/ui/views/wallet_screen/my_wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        });
  }
}
