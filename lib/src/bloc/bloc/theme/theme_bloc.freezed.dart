// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentTheme,
    required TResult Function(int themeIndex) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentTheme,
    TResult? Function(int themeIndex)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentTheme,
    TResult Function(int themeIndex)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentTheme value) fetchCurrentTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCurrentThemeCopyWith<$Res> {
  factory _$$_FetchCurrentThemeCopyWith(_$_FetchCurrentTheme value,
          $Res Function(_$_FetchCurrentTheme) then) =
      __$$_FetchCurrentThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCurrentThemeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_FetchCurrentTheme>
    implements _$$_FetchCurrentThemeCopyWith<$Res> {
  __$$_FetchCurrentThemeCopyWithImpl(
      _$_FetchCurrentTheme _value, $Res Function(_$_FetchCurrentTheme) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCurrentTheme implements _FetchCurrentTheme {
  const _$_FetchCurrentTheme();

  @override
  String toString() {
    return 'ThemeEvent.fetchCurrentTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchCurrentTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentTheme,
    required TResult Function(int themeIndex) changeTheme,
  }) {
    return fetchCurrentTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentTheme,
    TResult? Function(int themeIndex)? changeTheme,
  }) {
    return fetchCurrentTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentTheme,
    TResult Function(int themeIndex)? changeTheme,
    required TResult orElse(),
  }) {
    if (fetchCurrentTheme != null) {
      return fetchCurrentTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentTheme value) fetchCurrentTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return fetchCurrentTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return fetchCurrentTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (fetchCurrentTheme != null) {
      return fetchCurrentTheme(this);
    }
    return orElse();
  }
}

abstract class _FetchCurrentTheme implements ThemeEvent {
  const factory _FetchCurrentTheme() = _$_FetchCurrentTheme;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({int themeIndex});
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ChangeTheme>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
  }) {
    return _then(_$_ChangeTheme(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme({required this.themeIndex});

  @override
  final int themeIndex;

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(themeIndex: $themeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTheme &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      __$$_ChangeThemeCopyWithImpl<_$_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentTheme,
    required TResult Function(int themeIndex) changeTheme,
  }) {
    return changeTheme(themeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentTheme,
    TResult? Function(int themeIndex)? changeTheme,
  }) {
    return changeTheme?.call(themeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentTheme,
    TResult Function(int themeIndex)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentTheme value) fetchCurrentTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentTheme value)? fetchCurrentTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ThemeEvent {
  const factory _ChangeTheme({required final int themeIndex}) = _$_ChangeTheme;

  int get themeIndex;
  @JsonKey(ignore: true)
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  int get themeIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int themeIndex) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int themeIndex)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int themeIndex)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentThemeState value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentThemeState value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentThemeState value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({int themeIndex});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
  }) {
    return _then(_value.copyWith(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_CurrentThemeStateCopyWith(_$_CurrentThemeState value,
          $Res Function(_$_CurrentThemeState) then) =
      __$$_CurrentThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int themeIndex});
}

/// @nodoc
class __$$_CurrentThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_CurrentThemeState>
    implements _$$_CurrentThemeStateCopyWith<$Res> {
  __$$_CurrentThemeStateCopyWithImpl(
      _$_CurrentThemeState _value, $Res Function(_$_CurrentThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
  }) {
    return _then(_$_CurrentThemeState(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrentThemeState implements _CurrentThemeState {
  const _$_CurrentThemeState({required this.themeIndex});

  @override
  final int themeIndex;

  @override
  String toString() {
    return 'ThemeState.current(themeIndex: $themeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentThemeState &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentThemeStateCopyWith<_$_CurrentThemeState> get copyWith =>
      __$$_CurrentThemeStateCopyWithImpl<_$_CurrentThemeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int themeIndex) current,
  }) {
    return current(themeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int themeIndex)? current,
  }) {
    return current?.call(themeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int themeIndex)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(themeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentThemeState value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentThemeState value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentThemeState value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _CurrentThemeState implements ThemeState {
  const factory _CurrentThemeState({required final int themeIndex}) =
      _$_CurrentThemeState;

  @override
  int get themeIndex;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentThemeStateCopyWith<_$_CurrentThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
