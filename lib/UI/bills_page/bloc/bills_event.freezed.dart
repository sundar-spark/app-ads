// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bills_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Bill> bills) billsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Bill> bills)? billsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Bill> bills)? billsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(BillsUpdate value) billsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(BillsUpdate value)? billsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FetchData value)? fetchData,
    TResult Function(BillsUpdate value)? billsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillsEventCopyWith<$Res> {
  factory $BillsEventCopyWith(
          BillsEvent value, $Res Function(BillsEvent) then) =
      _$BillsEventCopyWithImpl<$Res, BillsEvent>;
}

/// @nodoc
class _$BillsEventCopyWithImpl<$Res, $Val extends BillsEvent>
    implements $BillsEventCopyWith<$Res> {
  _$BillsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BillsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BillsEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Bill> bills) billsUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Bill> bills)? billsUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Bill> bills)? billsUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(BillsUpdate value) billsUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(BillsUpdate value)? billsUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FetchData value)? fetchData,
    TResult Function(BillsUpdate value)? billsUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements BillsEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$BillsEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDataImpl with DiagnosticableTreeMixin implements FetchData {
  const _$FetchDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillsEvent.fetchData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BillsEvent.fetchData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Bill> bills) billsUpdated,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Bill> bills)? billsUpdated,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Bill> bills)? billsUpdated,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(BillsUpdate value) billsUpdated,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(BillsUpdate value)? billsUpdated,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FetchData value)? fetchData,
    TResult Function(BillsUpdate value)? billsUpdated,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements BillsEvent {
  const factory FetchData() = _$FetchDataImpl;
}

/// @nodoc
abstract class _$$BillsUpdateImplCopyWith<$Res> {
  factory _$$BillsUpdateImplCopyWith(
          _$BillsUpdateImpl value, $Res Function(_$BillsUpdateImpl) then) =
      __$$BillsUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Bill> bills});
}

/// @nodoc
class __$$BillsUpdateImplCopyWithImpl<$Res>
    extends _$BillsEventCopyWithImpl<$Res, _$BillsUpdateImpl>
    implements _$$BillsUpdateImplCopyWith<$Res> {
  __$$BillsUpdateImplCopyWithImpl(
      _$BillsUpdateImpl _value, $Res Function(_$BillsUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bills = null,
  }) {
    return _then(_$BillsUpdateImpl(
      null == bills
          ? _value._bills
          : bills // ignore: cast_nullable_to_non_nullable
              as List<Bill>,
    ));
  }
}

/// @nodoc

class _$BillsUpdateImpl with DiagnosticableTreeMixin implements BillsUpdate {
  const _$BillsUpdateImpl(final List<Bill> bills) : _bills = bills;

  final List<Bill> _bills;
  @override
  List<Bill> get bills {
    if (_bills is EqualUnmodifiableListView) return _bills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bills);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillsEvent.billsUpdated(bills: $bills)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BillsEvent.billsUpdated'))
      ..add(DiagnosticsProperty('bills', bills));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillsUpdateImpl &&
            const DeepCollectionEquality().equals(other._bills, _bills));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillsUpdateImplCopyWith<_$BillsUpdateImpl> get copyWith =>
      __$$BillsUpdateImplCopyWithImpl<_$BillsUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Bill> bills) billsUpdated,
  }) {
    return billsUpdated(bills);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Bill> bills)? billsUpdated,
  }) {
    return billsUpdated?.call(bills);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Bill> bills)? billsUpdated,
    required TResult orElse(),
  }) {
    if (billsUpdated != null) {
      return billsUpdated(bills);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(BillsUpdate value) billsUpdated,
  }) {
    return billsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(BillsUpdate value)? billsUpdated,
  }) {
    return billsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FetchData value)? fetchData,
    TResult Function(BillsUpdate value)? billsUpdated,
    required TResult orElse(),
  }) {
    if (billsUpdated != null) {
      return billsUpdated(this);
    }
    return orElse();
  }
}

abstract class BillsUpdate implements BillsEvent {
  const factory BillsUpdate(final List<Bill> bills) = _$BillsUpdateImpl;

  List<Bill> get bills;
  @JsonKey(ignore: true)
  _$$BillsUpdateImplCopyWith<_$BillsUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
