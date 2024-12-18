// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersState {
  List<Offers> get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<int> get newlyAddedIndices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersStateCopyWith<OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res, OffersState>;
  @useResult
  $Res call(
      {List<Offers> data,
      bool isLoading,
      String? errorMessage,
      List<int> newlyAddedIndices});
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res, $Val extends OffersState>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? newlyAddedIndices = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offers>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      newlyAddedIndices: null == newlyAddedIndices
          ? _value.newlyAddedIndices
          : newlyAddedIndices // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersStateImplCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$OffersStateImplCopyWith(
          _$OffersStateImpl value, $Res Function(_$OffersStateImpl) then) =
      __$$OffersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Offers> data,
      bool isLoading,
      String? errorMessage,
      List<int> newlyAddedIndices});
}

/// @nodoc
class __$$OffersStateImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$OffersStateImpl>
    implements _$$OffersStateImplCopyWith<$Res> {
  __$$OffersStateImplCopyWithImpl(
      _$OffersStateImpl _value, $Res Function(_$OffersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? newlyAddedIndices = null,
  }) {
    return _then(_$OffersStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offers>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      newlyAddedIndices: null == newlyAddedIndices
          ? _value._newlyAddedIndices
          : newlyAddedIndices // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OffersStateImpl implements _OffersState {
  const _$OffersStateImpl(
      {final List<Offers> data = const [],
      this.isLoading = false,
      this.errorMessage,
      final List<int> newlyAddedIndices = const []})
      : _data = data,
        _newlyAddedIndices = newlyAddedIndices;

  final List<Offers> _data;
  @override
  @JsonKey()
  List<Offers> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  final List<int> _newlyAddedIndices;
  @override
  @JsonKey()
  List<int> get newlyAddedIndices {
    if (_newlyAddedIndices is EqualUnmodifiableListView)
      return _newlyAddedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newlyAddedIndices);
  }

  @override
  String toString() {
    return 'OffersState(data: $data, isLoading: $isLoading, errorMessage: $errorMessage, newlyAddedIndices: $newlyAddedIndices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._newlyAddedIndices, _newlyAddedIndices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_newlyAddedIndices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersStateImplCopyWith<_$OffersStateImpl> get copyWith =>
      __$$OffersStateImplCopyWithImpl<_$OffersStateImpl>(this, _$identity);
}

abstract class _OffersState implements OffersState {
  const factory _OffersState(
      {final List<Offers> data,
      final bool isLoading,
      final String? errorMessage,
      final List<int> newlyAddedIndices}) = _$OffersStateImpl;

  @override
  List<Offers> get data;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  List<int> get newlyAddedIndices;
  @override
  @JsonKey(ignore: true)
  _$$OffersStateImplCopyWith<_$OffersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
