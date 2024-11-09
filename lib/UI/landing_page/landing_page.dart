import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:ads_app/UI/landing_page/landing_desktop.dart';
import 'package:ads_app/UI/responsive_layout.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const route = '/';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      largeScreen: const LandingDesktop(),
      mobile: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO: Logo
            // Image.asset('assets/images/wolf.png'),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, LoginPage.route);
                }, 
                child: Text('Login'))
            )
          ],
        ),
      ),
    );
  }
}