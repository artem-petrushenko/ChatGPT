// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocale,
    required TResult Function(String locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocale,
    TResult? Function(String locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocale,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentLocaleEvent value)
        fetchCurrentLocale,
    required TResult Function(_ChangeLocaleEvent value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult? Function(_ChangeLocaleEvent value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult Function(_ChangeLocaleEvent value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res, LocaleEvent>;
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res, $Val extends LocaleEvent>
    implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCurrentLocaleEventCopyWith<$Res> {
  factory _$$_FetchCurrentLocaleEventCopyWith(_$_FetchCurrentLocaleEvent value,
          $Res Function(_$_FetchCurrentLocaleEvent) then) =
      __$$_FetchCurrentLocaleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCurrentLocaleEventCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$_FetchCurrentLocaleEvent>
    implements _$$_FetchCurrentLocaleEventCopyWith<$Res> {
  __$$_FetchCurrentLocaleEventCopyWithImpl(_$_FetchCurrentLocaleEvent _value,
      $Res Function(_$_FetchCurrentLocaleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCurrentLocaleEvent implements _FetchCurrentLocaleEvent {
  const _$_FetchCurrentLocaleEvent();

  @override
  String toString() {
    return 'LocaleEvent.fetchCurrentLocale()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCurrentLocaleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocale,
    required TResult Function(String locale) changeLocale,
  }) {
    return fetchCurrentLocale();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocale,
    TResult? Function(String locale)? changeLocale,
  }) {
    return fetchCurrentLocale?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocale,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (fetchCurrentLocale != null) {
      return fetchCurrentLocale();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentLocaleEvent value)
        fetchCurrentLocale,
    required TResult Function(_ChangeLocaleEvent value) changeLocale,
  }) {
    return fetchCurrentLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult? Function(_ChangeLocaleEvent value)? changeLocale,
  }) {
    return fetchCurrentLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult Function(_ChangeLocaleEvent value)? changeLocale,
    required TResult orElse(),
  }) {
    if (fetchCurrentLocale != null) {
      return fetchCurrentLocale(this);
    }
    return orElse();
  }
}

abstract class _FetchCurrentLocaleEvent implements LocaleEvent {
  const factory _FetchCurrentLocaleEvent() = _$_FetchCurrentLocaleEvent;
}

/// @nodoc
abstract class _$$_ChangeLocaleEventCopyWith<$Res> {
  factory _$$_ChangeLocaleEventCopyWith(_$_ChangeLocaleEvent value,
          $Res Function(_$_ChangeLocaleEvent) then) =
      __$$_ChangeLocaleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$_ChangeLocaleEventCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$_ChangeLocaleEvent>
    implements _$$_ChangeLocaleEventCopyWith<$Res> {
  __$$_ChangeLocaleEventCopyWithImpl(
      _$_ChangeLocaleEvent _value, $Res Function(_$_ChangeLocaleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_ChangeLocaleEvent(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLocaleEvent implements _ChangeLocaleEvent {
  const _$_ChangeLocaleEvent({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'LocaleEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLocaleEvent &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLocaleEventCopyWith<_$_ChangeLocaleEvent> get copyWith =>
      __$$_ChangeLocaleEventCopyWithImpl<_$_ChangeLocaleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentLocale,
    required TResult Function(String locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentLocale,
    TResult? Function(String locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentLocale,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentLocaleEvent value)
        fetchCurrentLocale,
    required TResult Function(_ChangeLocaleEvent value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult? Function(_ChangeLocaleEvent value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentLocaleEvent value)? fetchCurrentLocale,
    TResult Function(_ChangeLocaleEvent value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocaleEvent implements LocaleEvent {
  const factory _ChangeLocaleEvent({required final String locale}) =
      _$_ChangeLocaleEvent;

  String get locale;
  @JsonKey(ignore: true)
  _$$_ChangeLocaleEventCopyWith<_$_ChangeLocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocaleState {
  String get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locale)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res, LocaleState>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res, $Val extends LocaleState>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_Initial(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'LocaleState.current(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) current,
  }) {
    return current(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String locale)? current,
  }) {
    return current?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocaleState {
  const factory _Initial({required final String locale}) = _$_Initial;

  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
