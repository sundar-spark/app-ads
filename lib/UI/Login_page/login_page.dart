import 'package:ads_app/Logic/Login/bloc/login_bloc.dart';
import 'package:ads_app/UI/home_page/homepage.dart';
import 'package:ads_app/UI/new_user_page/new_user_page.dart';
import 'package:ads_app/UI/shared_widgets/circular_laoding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool codeVisibility = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();
  String? phoneVerificationId;
  final countryPicker = const FlCountryCodePicker();

  @override
  void initState() {
    super.initState();
    countryCodeController.text = "+91";
  }

//All SignIn Login In this Fuction
  sendOTP(BuildContext context) async {
    await auth
        .verifyPhoneNumber(
      phoneNumber:
          '${countryCodeController.text}${phonenumberController.text}'.trim(),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Auth: verifiactionFailed error: $e");
      },
      codeSent: (String verificationId, int? resendToken) async {
        // String smsCode = "xxxxxx";
        setState(() {
          phoneVerificationId = verificationId;
          codeVisibility = true;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    )
        .onError((error, stackTrace) {
      print("Auth: sms Error: $error \n$stackTrace");
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if(state is LoginNewUserState){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> NewUserPage()));
        }
        if(state is LoginSuccessState)
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> HomePage()));
        }
      },
      builder: (context, state) {
        return LoadingScreen(
          isLoading: state is LoginLoadingState,
          child: Form(
            child: Container(
                padding: EdgeInsets.all(size.width * 0.025),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: size.width * 0.15,
                          child: TextFormField(
                              keyboardType: TextInputType.none,
                              showCursor: false,
                              controller: countryCodeController,
                              enableInteractiveSelection: false,
                              onTap: () async {
                                final picked = await countryPicker.showPicker(
                                    context: context);
                                if (picked != null) {
                                  setState(() {
                                    countryCodeController.text = picked.dialCode;
                                  });
                                }
                              },
                              //initialValue: "+91",
                              decoration: InputDecoration(
                                  labelText: "code",
                                  border: OutlineInputBorder())),
                        ),
                        SizedBox(
                          width: size.width * 0.75,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phonenumberController,
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                border: OutlineInputBorder()),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            sendOTP(context);
                          },
                          child: Text("Send OTP")),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Visibility(
                        visible: codeVisibility, child: Text("Please enter OTP")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Visibility(
                          visible: codeVisibility,
                          child: Pinput(
                            length: 6,
                            onCompleted: (pin) async {
                              print("LoginPage: onCompleted: $pin");
                              if (phoneVerificationId != null) {
                                    context.read<LoginBloc>().add(
                                  PinVerficationEvent(
                                    pin: pin, 
                                    verificationCode: phoneVerificationId!));
                              }
                              },
                            
                            onSubmitted: (pin) {
                              print("LoginPage: onSubmitted: $pin");
                            },
                          )),
                    )
                  ],
                )),
          ),
        );
      },
    ));
  }
}
