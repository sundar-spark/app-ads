
import 'package:ads_app/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
const factory ProfileState({
    UserData? userData,
   @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ProfileState;
} 