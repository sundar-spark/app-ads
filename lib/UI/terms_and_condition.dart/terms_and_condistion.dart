import 'package:ads_app/assets/strings/terms_and_conditions_string.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  static const String route ='/termsAndConditions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: const Text("Terms And Conditions")),
      body: const SingleChildScrollView(
        child:Text(termsAndConditions)
      ),
    );
  }
}