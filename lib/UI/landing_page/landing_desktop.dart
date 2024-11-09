import 'dart:async';

import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:ads_app/UI/terms_and_condition.dart/terms_and_condistion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _LandingDesktopState();
}

class _LandingDesktopState extends State<LandingDesktop> {


 final List<String> _titles = ["Welcome", "Discover More", "Stay Inspired", "Enjoy the Journey"];
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTitleAnimation();
  }

  void _startTitleAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _titles.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){}, child:  Text("About Us", style: Theme.of(context).textTheme.bodyLarge,)),
          TextButton(onPressed: (){ context.goNamed(TermsAndConditionsPage.route);}, child:  Text("Terms&Conditions",style: Theme.of(context).textTheme.bodyLarge, )),
          TextButton(onPressed: (){context.goNamed(LoginPage.route);}, child:  Text("Login",style: Theme.of(context).textTheme.bodyLarge,)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 650,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: AnimatedSwitcher(
                duration: const Duration(milliseconds: 1500),
                child: Text(  _titles[_currentIndex],
                  key: ValueKey<String>(_titles[_currentIndex]),
                  style: const TextStyle(color: Colors.white),)),
              expandedTitleScale: 2.5,
              background: Image.network(
                "https://media.istockphoto.com/id/1315096305/photo/green-computing-green-technology-green-it-csr-and-it-ethics-concept.jpg?s=2048x2048&w=is&k=20&c=NoCdNLCoCQga-Sg19af4hduVHHAnoluiLC3XbqYr7k0=",
                fit: BoxFit.cover,
              ),
            ),
          ),
        SliverToBoxAdapter(
          child: Container(
            color:Theme.of(context).colorScheme.inversePrimary,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 128),
            child: Column(
              children: [
                Text("Our Vision",style: Theme.of(context).textTheme.headlineLarge,),
                Text("We’re committed to a sustainable, paperless future where digital billing replaces traditional thermal receipts, empowering users to access and track their bills effortlessly through our mobile app. Our solution reduces paper waste by enabling secure, app-based interactions between customers and merchants using a unique code—no phone number required. By simplifying merchant communication and providing a digital repository for all bills, we aim to make transactions more efficient, environmentally friendly, and convenient.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,)
              ]
            ),
          ),),
      SliverToBoxAdapter(
  child: Container(
    color: Theme.of(context).colorScheme.inversePrimary,
    padding: const EdgeInsets.all(8.0), // Basic padding
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            "The Products",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(height: 8), // Small spacing
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: (){},
                  child: Card(
                    color: Theme.of(context).cardColor,
                    child: Container(
                      padding: const EdgeInsets.all(8.0), // Inner padding for content
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "For customers",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              "Say goodbye to paper clutter and thermal receipts! With our app, you can easily access and track all your bills digitally. Simply provide your unique code at participating merchants, and all communications and receipts will be securely stored in one place. Enjoy a seamless, eco-friendly billing experience that's always at your fingertips.",
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(width: 16)), // Small spacing between cards
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: (){},
                  child: Card(
                    color: Theme.of(context).cardColor,
                    child: Container(
                      padding: const EdgeInsets.all(8.0), // Inner padding for content
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "For Merchants",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text("Streamline your billing process and reduce paper waste with our digital solution. Our app lets you securely send bills to customers using a unique code, eliminating the need for phone numbers and costly thermal printing. Join us in making transactions eco-friendly and efficient, while enhancing customer satisfaction with convenient, digital record-keeping.",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
)
        ],
      ),
    );
  }
}