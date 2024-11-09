part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {
}

final class LoggedInEvent extends LoginEvent{
  
  final String email;
  final BuildContext context;
  LoggedInEvent({required this.email,required this.context});
}

final class LoginWithOTP extends LoginEvent{
  final String phoneNumber;
  final String code;
  LoginWithOTP({required this.code,required this.phoneNumber});
}

final class VerificationLinkSentEvent extends LoginEvent{
  final String email;
  final String email_link;
  
  VerificationLinkSentEvent({required this.email, required this.email_link});
}

final class sendOTPEvent extends LoginEvent {
  final String countryCode;
  final String phoneNumber;

  sendOTPEvent({required this.countryCode, required this.phoneNumber});
}

final class PinVerficationEvent extends LoginEvent {

  final String verificationCode;
  final String pin;

  PinVerficationEvent({required this.pin, required this.verificationCode});
}