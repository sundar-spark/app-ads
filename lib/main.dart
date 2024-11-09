import 'package:ads_app/Logic/Login/bloc/login_bloc.dart';
import 'package:ads_app/UI/landing_page/landing_page.dart';
import 'package:ads_app/UI/profile_page/bloc/profile_bloc.dart';
import 'package:ads_app/firebase_options.dart';
import 'package:ads_app/route_generator.dart';
import 'package:ads_app/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart'; 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: "lib/assets/.env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
 final AppRouter _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (context)=>LoginBloc()),
        BlocProvider<ProfileBloc>(create: (context)=>ProfileBloc()),
      ],
      child: MaterialApp.router(
        title: 'Truepon',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: _appRouter.router,
      ),
    );
  }
}
