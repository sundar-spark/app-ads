
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  FirebaseAuth auth = FirebaseAuth.instance;
  LoginBloc() : super(LoginInitial()) {
    
    on<LoginEvent>((event, emit) {
      
    });

    on<LoginWithOTP>((event, emit)async {
      emit(LoginLoadingState());

    });

   on<LoggedInEvent>((event,emit)async{
    emit(LoginLoadingState());
   });

  on<sendOTPEvent>((event, emit)async{
    emit(LoginLoadingState());


    await auth
        .verifyPhoneNumber(
      phoneNumber:
          '${event.countryCode}${event.phoneNumber}'.trim(),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        debugPrint("Auth: verifiactionFailed error: $e");
      },
      codeSent: (String verificationId, int? resendToken) async {

        emit(OTPSentState(phoneVerificationId: verificationId));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    )
        .onError((error, stackTrace) {
      debugPrint("Auth: sms Error: $error \n$stackTrace");
    });

  });

   on<PinVerficationEvent>((event, emit)async{
      emit(LoginLoadingState());
      PhoneAuthCredential credential =
          PhoneAuthProvider.credential(
              verificationId: event.verificationCode,
              smsCode: event.pin);

      var value = await auth.signInWithCredential(credential);
      print("Auth value: $value, \n ${value.additionalUserInfo?.isNewUser}, ${value.credential}");
      if(value.additionalUserInfo?.isNewUser??false)
      {
        emit(LoginNewUserState());
      }
      else if(value.user != null)
      {
        emit(LoginSuccessState());
      }
   }
 );

   //End Of Bloc
  }

}
