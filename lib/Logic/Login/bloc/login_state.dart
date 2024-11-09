part of 'login_bloc.dart';



@immutable
sealed class LoginState extends Equatable {
}

final class LoginInitial extends LoginState {
  
  LoginInitial();
  
  @override 
  List<Object?> get props => throw UnimplementedError();
}

final class OTPSentState extends LoginState{
  
  final String phoneVerificationId;
  OTPSentState({required this.phoneVerificationId});
  
  @override
  List<Object?> get props => [];
}

class LoginSuccessState extends LoginState{
  LoginSuccessState();

  @override
  List<Object?> get props => [];
}

class LoginNewUserState extends LoginState{
  @override
  List<Object?> get props => [];

}

class LoginLoadingState extends LoginState{
  @override
  List<Object?> get props => [];
}
class LoginErrorState extends LoginState{
  final String errorMessage;
  LoginErrorState({required this.errorMessage});
  
  @override
  List<Object?> get props => [];

}