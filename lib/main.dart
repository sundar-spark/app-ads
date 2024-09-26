import 'package:ads_app/Logic/Login/bloc/login_bloc.dart';
import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:ads_app/UI/home_page/homepage.dart';
import 'package:ads_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: "lib/assets/.env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (context)=>LoginBloc())
      ],
      child: MaterialApp(
        title: 'Truepon',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder())
        ),
        home: FirebaseAuth.instance.currentUser == null ? LoginPage() : HomePage(),
      ),
    );
  }
}
