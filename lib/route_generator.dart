import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:ads_app/UI/error_page/error_page.dart';
import 'package:ads_app/UI/home_page/homepage.dart';
import 'package:ads_app/UI/landing_page/landing_page.dart';
import 'package:ads_app/UI/new_user_page/new_user_page.dart';
import 'package:ads_app/UI/terms_and_condition.dart/terms_and_condistion.dart';
import 'package:flutter/material.dart';

// app_router.dart
import 'package:go_router/go_router.dart';


class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: LandingPage.route,  // Define a constant for this path in LandingPage
        builder: (context, state) => const LandingPage(),
      ),
      GoRoute(
        path: '/login',
        name: LoginPage.route,  // Define a constant for this path in LoginPage
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/home',
        name: HomePage.route,  // Define a constant for this path in HomePage
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/newUser',
        name: NewUserPage.route,  // Define a constant for this path in NewUserPage
        builder: (context, state) => const NewUserPage(),
      ),
      GoRoute(
        path: '/terms&conditions',
        name: TermsAndConditionsPage.route,  // Define a constant for this path in TermsAndConditionsPage
        builder: (context, state) => const TermsAndConditionsPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(),  // Default error page
  );
}
