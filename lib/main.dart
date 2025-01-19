import 'package:flutter/material.dart';
import 'package:ui_task1/screens/navbar_screens/screens/home.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/profile_screen.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/audience.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/contact.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/favourite.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/personal_info_screen.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/profile_pass_edit.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/screens/rating.dart';
import 'package:ui_task1/screens/onboarding_screens/screens/onBoard1.dart';
import 'package:ui_task1/screens/onboarding_screens/screens/onBoard2.dart';
import 'package:ui_task1/screens/onboarding_screens/screens/test.dart';
import 'package:ui_task1/screens/onboarding_screens/screens/recommendations.dart';
import 'package:ui_task1/screens/registerations_screens/screens/edit_pass.dart';
import 'package:ui_task1/screens/registerations_screens/screens/forgot_pass.dart';
import 'package:ui_task1/screens/registerations_screens/screens/login_screen.dart';
import 'package:ui_task1/screens/registerations_screens/screens/otp_mail.dart';
import 'package:ui_task1/screens/registerations_screens/screens/otp_phone.dart';
import 'package:ui_task1/screens/registerations_screens/screens/sign_up_screen.dart';
import 'package:ui_task1/screens/navbar_screens/widgets/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // "/": (context) => BottomNavBar(),
        // "/": (context) => Profile(),
        "/": (context) => OnBoard1(),
        "/onboard2": (context) => OnBoard2(),
        "/recommendations": (context) => Recommendations(),
        "/login": (context) => SignInScreen(),
        "/signup": (context) => SignUpScreen(),
        "/mailotp": (context) => MailOtp(),
        "/phoneotp": (context) => PhoneOtp(),
        "/forgotpass": (context) => ForgotPassScreen(),
        "/editpass": (context) => EditPassScreen(),
        "/home": (context) => BottomNavBar(),
        "/personalinfo": (context) => PersonalInfoScreen(),
        "/favourite": (context) => FavouriteScreen(),
        "/audience": (context) => AudienceScreen(),
        "/contact": (context) => ContactScreen(),
        "/rating": (context) => RatingScreen(),
        "/profilepassedit": (context) => ProfileEditPassScreen(),
      },
    );
  }
}
