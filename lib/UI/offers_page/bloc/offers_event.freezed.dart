// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Offers> offers) offersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Offers> offers)? offersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Offers> offers)? offersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffersInit value) started,
    required TResult Function(FetchOffers value) fetchData,
    required TResult Function(OffersUpdate value) offersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffersInit value)? started,
    TResult? Function(FetchOffers value)? fetchData,
    TResult? Function(OffersUpdate value)? offersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInit value)? started,
    TResult Function(FetchOffers value)? fetchData,
    TResult Function(OffersUpdate value)? offersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res, OffersEvent>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res, $Val extends OffersEvent>
    implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OffersInitImplCopyWith<$Res> {
  factory _$$OffersInitImplCopyWith(
          _$OffersInitImpl value, $Res Function(_$OffersInitImpl) then) =
      __$$OffersInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OffersInitImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$OffersInitImpl>
    implements _$$OffersInitImplCopyWith<$Res> {
  __$$OffersInitImplCopyWithImpl(
      _$OffersInitImpl _value, $Res Function(_$OffersInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OffersInitImpl implements OffersInit {
  const _$OffersInitImpl();

  @override
  String toString() {
    return 'OffersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OffersInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Offers> offers) offersUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Offers> offers)? offersUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Offers> offers)? offersUpdated,
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
    required TResult Function(OffersInit value) started,
    required TResult Function(FetchOffers value) fetchData,
    required TResult Function(OffersUpdate value) offersUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffersInit value)? started,
    TResult? Function(FetchOffers value)? fetchData,
    TResult? Function(OffersUpdate value)? offersUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInit value)? started,
    TResult Function(FetchOffers value)? fetchData,
    TResult Function(OffersUpdate value)? offersUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class OffersInit implements OffersEvent {
  const factory OffersInit() = _$OffersInitImpl;
}

/// @nodoc
abstract class _$$FetchOffersImplCopyWith<$Res> {
  factory _$$FetchOffersImplCopyWith(
          _$FetchOffersImpl value, $Res Function(_$FetchOffersImpl) then) =
      __$$FetchOffersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOffersImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$FetchOffersImpl>
    implements _$$FetchOffersImplCopyWith<$Res> {
  __$$FetchOffersImplCopyWithImpl(
      _$FetchOffersImpl _value, $Res Function(_$FetchOffersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOffersImpl implements FetchOffers {
  const _$FetchOffersImpl();

  @override
  String toString() {
    return 'OffersEvent.fetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOffersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Offers> offers) offersUpdated,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Offers> offers)? offersUpdated,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Offers> offers)? offersUpdated,
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
    required TResult Function(OffersInit value) started,
    required TResult Function(FetchOffers value) fetchData,
    required TResult Function(OffersUpdate value) offersUpdated,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffersInit value)? started,
    TResult? Function(FetchOffers value)? fetchData,
    TResult? Function(OffersUpdate value)? offersUpdated,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInit value)? started,
    TResult Function(FetchOffers value)? fetchData,
    TResult Function(OffersUpdate value)? offersUpdated,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchOffers implements OffersEvent {
  const factory FetchOffers() = _$FetchOffersImpl;
}

/// @nodoc
abstract class _$$OffersUpdateImplCopyWith<$Res> {
  factory _$$OffersUpdateImplCopyWith(
          _$OffersUpdateImpl value, $Res Function(_$OffersUpdateImpl) then) =
      __$$OffersUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offers> offers});
}

/// @nodoc
class __$$OffersUpdateImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$OffersUpdateImpl>
    implements _$$OffersUpdateImplCopyWith<$Res> {
  __$$OffersUpdateImplCopyWithImpl(
      _$OffersUpdateImpl _value, $Res Function(_$OffersUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
  }) {
    return _then(_$OffersUpdateImpl(
      null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offers>,
    ));
  }
}

/// @nodoc

class _$OffersUpdateImpl implements OffersUpdate {
  const _$OffersUpdateImpl(final List<Offers> offers) : _offers = offers;

  final List<Offers> _offers;
  @override
  List<Offers> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'OffersEvent.offersUpdated(offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersUpdateImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersUpdateImplCopyWith<_$OffersUpdateImpl> get copyWith =>
      __$$OffersUpdateImplCopyWithImpl<_$OffersUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
    required TResult Function(List<Offers> offers) offersUpdated,
  }) {
    return offersUpdated(offers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
    TResult? Function(List<Offers> offers)? offersUpdated,
  }) {
    return offersUpdated?.call(offers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    TResult Function(List<Offers> offers)? offersUpdated,
    required TResult orElse(),
  }) {
    if (offersUpdated != null) {
      return offersUpdated(offers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OffersInit value) started,
    required TResult Function(FetchOffers value) fetchData,
    required TResult Function(OffersUpdate value) offersUpdated,
  }) {
    return offersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OffersInit value)? started,
    TResult? Function(FetchOffers value)? fetchData,
    TResult? Function(OffersUpdate value)? offersUpdated,
  }) {
    return offersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OffersInit value)? started,
    TResult Function(FetchOffers value)? fetchData,
    TResult Function(OffersUpdate value)? offersUpdated,
    required TResult orElse(),
  }) {
    if (offersUpdated != null) {
      return offersUpdated(this);
    }
    return orElse();
  }
}

abstract class OffersUpdate implements OffersEvent {
  const factory OffersUpdate(final List<Offers> offers) = _$OffersUpdateImpl;

  List<Offers> get offers;
  @JsonKey(ignore: true)
  _$$OffersUpdateImplCopyWith<_$OffersUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
