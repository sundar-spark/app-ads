// import 'package:ads_app/Logic/Login/bloc/login_bloc.dart';
// import 'package:ads_app/handlers/lifecyclehandler.dart';
// import 'package:ads_app/main.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
// //TextControllers
//   TextEditingController emailController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     //LifeCycle Observer
//     WidgetsBinding.instance.addObserver(LifecycleEventHandler(
//       resumeCallBack: () async {
//         FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
//           print("Auth: Dynamic Link Data: ${dynamicLinkData.link}");
//           print("Auth: dynamic link path: ${dynamicLinkData.link.path}");
//           // Navigator.pushNamed(context, dynamicLinkData.link.path);
//           if (emailController.text != "")
//             BlocProvider.of<LoginBloc>(context).add(VerificationLinkSentEvent(
//                 email: emailController.text,
//                 email_link: dynamicLinkData.link.path));
//         }).onError((error) {
//           print("Auth: link Error: $error");
//         });
//       },
//     ));
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: BlocConsumer<LoginBloc, LoginState>(
//         listener: (context, state) {
          

//         if(state is LoginErrorState)
//         {
//           ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(
//                           content: Text(state.errorMessage, textAlign: TextAlign.center,),
//                           backgroundColor: Colors.redAccent,));
//         }
//         if(state is LoginSuccessState)
//         {
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MyHomePage(title: "Offers")));
//         }

          
//         },
//         builder: (context, state) {
//           return Form(
//             child: Container(
//                 padding: EdgeInsets.all(16.0),
//                 alignment: Alignment.center,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: height * 0.2,
//                       ),
//                       //UserName Editable
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 8, vertical: 16),
//                         child: TextFormField(
//                           controller: emailController,
//                           decoration: const InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: "E-Mail ID"),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter your email';
//                             }
//                             return null;
//                           },
//                         ),
//                       ),

//                       //Login Button
//                       Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 8, vertical: 16),
//                           child: Center(
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 BlocProvider.of<LoginBloc>(context)
//                                     .add(LoggedInEvent(
//                                   email: emailController.text,
//                                   context: context,
//                                 ));
//                               },
//                               child: state is LoginLoadingState? CircularProgressIndicator():Text("Send Verification Link to Email"),
//                             ),
//                           )),

//                       //Divider
//                       Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 8, vertical: 16),
//                           child: Row(children: [
//                             Expanded(
//                                 child: Divider(
//                               endIndent: 20,
//                               color: Colors.blue,
//                             )),
//                             Text("OR"),
//                             Expanded(
//                                 child: Divider(
//                               indent: 20,
//                               color: Colors.blue,
//                             )),
//                           ])),
      
//                     ])),
//           );
//         },
//       ),
//     );
//   }
// }
