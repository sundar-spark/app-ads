// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bills_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillsState {
  List<Bill> get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<int> get newlyAddedIndices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillsStateCopyWith<BillsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillsStateCopyWith<$Res> {
  factory $BillsStateCopyWith(
          BillsState value, $Res Function(BillsState) then) =
      _$BillsStateCopyWithImpl<$Res, BillsState>;
  @useResult
  $Res call(
      {List<Bill> data,
      bool isLoading,
      String? errorMessage,
      List<int> newlyAddedIndices});
}

/// @nodoc
class _$BillsStateCopyWithImpl<$Res, $Val extends BillsState>
    implements $BillsStateCopyWith<$Res> {
  _$BillsStateCopyWithImpl(this._value, this._then);

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
              as List<Bill>,
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
abstract class _$$BillsStateImplCopyWith<$Res>
    implements $BillsStateCopyWith<$Res> {
  factory _$$BillsStateImplCopyWith(
          _$BillsStateImpl value, $Res Function(_$BillsStateImpl) then) =
      __$$BillsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Bill> data,
      bool isLoading,
      String? errorMessage,
      List<int> newlyAddedIndices});
}

/// @nodoc
class __$$BillsStateImplCopyWithImpl<$Res>
    extends _$BillsStateCopyWithImpl<$Res, _$BillsStateImpl>
    implements _$$BillsStateImplCopyWith<$Res> {
  __$$BillsStateImplCopyWithImpl(
      _$BillsStateImpl _value, $Res Function(_$BillsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? newlyAddedIndices = null,
  }) {
    return _then(_$BillsStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Bill>,
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

class _$BillsStateImpl implements _BillsState {
  const _$BillsStateImpl(
      {final List<Bill> data = const [],
      this.isLoading = false,
      this.errorMessage,
      final List<int> newlyAddedIndices = const []})
      : _data = data,
        _newlyAddedIndices = newlyAddedIndices;

  final List<Bill> _data;
  @override
  @JsonKey()
  List<Bill> get data {
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
    return 'BillsState(data: $data, isLoading: $isLoading, errorMessage: $errorMessage, newlyAddedIndices: $newlyAddedIndices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillsStateImpl &&
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
  _$$BillsStateImplCopyWith<_$BillsStateImpl> get copyWith =>
      __$$BillsStateImplCopyWithImpl<_$BillsStateImpl>(this, _$identity);
}

abstract class _BillsState implements BillsState {
  const factory _BillsState(
      {final List<Bill> data,
      final bool isLoading,
      final String? errorMessage,
      final List<int> newlyAddedIndices}) = _$BillsStateImpl;

  @override
  List<Bill> get data;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  List<int> get newlyAddedIndices;
  @override
  @JsonKey(ignore: true)
  _$$BillsStateImplCopyWith<_$BillsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
