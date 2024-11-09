import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const routeName = '/error'; // Define a static route name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('404 - Page not found'),
      ),
    );
  }
}
