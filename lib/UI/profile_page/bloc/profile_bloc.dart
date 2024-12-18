import 'package:ads_app/UI/profile_page/bloc/profile_event.dart';
import 'package:ads_app/UI/profile_page/bloc/profile_state.dart';
import 'package:ads_app/models/user_data.dart';
import 'package:ads_app/repositories/profile_repository.dart';
import 'package:bloc/bloc.dart';
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;
  ProfileBloc({required this.repository}) : super(ProfileState()) {
    on<ProfileEvent>((event, emit) {
    });
    on<ProfileInit>(_onStarted);
  }

  _onStarted(ProfileInit event, Emitter<ProfileState> emit )async{
      
     UserData? userData = await repository.fetchProfileDetails();

      if(userData!=null)
      {
        emit(ProfileState(userData: userData));
      }
      else{
        emit(state.copyWith(errorMessage: "User Returned Null"));
      }


    }


}
