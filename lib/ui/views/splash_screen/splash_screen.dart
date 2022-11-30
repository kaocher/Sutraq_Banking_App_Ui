import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/views/walkthrough_screen/walkthrough_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1400)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WalkThroughScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 108.h,
          width: 112.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppStrings.appLogo), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
