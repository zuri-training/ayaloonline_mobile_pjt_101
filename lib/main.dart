import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/login_screen.dart';
import 'package:ayalo_mobile_pjt101/Screens/landing_page.dart';
import 'package:ayalo_mobile_pjt101/api/generate_profile.dart';
import 'package:ayalo_mobile_pjt101/state_manager/home_toggle.dart';
import 'package:ayalo_mobile_pjt101/state_manager/log_status.dart';
import 'package:ayalo_mobile_pjt101/state_manager/profile_detail_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => HomePageIndex(),
      ),
      ChangeNotifierProvider(
        create: (_) => LogStatus(),
      ),
      ChangeNotifierProvider(
        create: (_) => IsLeasor(),
      ),
      ChangeNotifierProvider(
        create: (_) => VerificationChecker(),
      ),
      Provider<FlutterFireAuthService>(
        create: (_) => FlutterFireAuthService(FirebaseAuth.instance),
      ),
      StreamProvider(
          create: (context) =>
              context.read<FlutterFireAuthService>().authStateChanges,
          initialData: null),
    ],
    child: AyaloMain(),
  ));
}

class AyaloMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ayalo',
      theme: ThemeData(
        primaryColor: Color(0xff53b175),
        backgroundColor: Color(0xffF5F5F5),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffF5F5F5),
          elevation: 0,
        ),
      ),
      routes: <String, WidgetBuilder>{
        'login': (BuildContext context) => LoginScreen(),
      },
      home: LandingPage(), //LoginScreen()
    );
  }
}
