import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  const LoadingScreen({super.key, required this.child, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      fit:StackFit.expand,
      children: [
        child,
        if(isLoading)
        Container(
                  color: const Color.fromARGB(200, 0, 0, 0),
                  child: Center(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: CircularProgressIndicator())))
                ),
      ],
    );
  }
}