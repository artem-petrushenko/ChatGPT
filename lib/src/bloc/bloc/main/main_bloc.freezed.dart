// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUser value) fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchUserCopyWith<$Res> {
  factory _$$_FetchUserCopyWith(
          _$_FetchUser value, $Res Function(_$_FetchUser) then) =
      __$$_FetchUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchUserCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_FetchUser>
    implements _$$_FetchUserCopyWith<$Res> {
  __$$_FetchUserCopyWithImpl(
      _$_FetchUser _value, $Res Function(_$_FetchUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchUser implements _FetchUser {
  const _$_FetchUser();

  @override
  String toString() {
    return 'MainEvent.fetchUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
  }) {
    return fetchUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
  }) {
    return fetchUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUser value) fetchUser,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class _FetchUser implements MainEvent {
  const factory _FetchUser() = _$_FetchUser;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainSuccessState value) success,
    required TResult Function(_MainFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainSuccessState value)? success,
    TResult? Function(_MainFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainSuccessState value)? success,
    TResult Function(_MainFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainLoadingStateCopyWith<$Res> {
  factory _$$_MainLoadingStateCopyWith(
          _$_MainLoadingState value, $Res Function(_$_MainLoadingState) then) =
      __$$_MainLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainLoadingStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainLoadingState>
    implements _$$_MainLoadingStateCopyWith<$Res> {
  __$$_MainLoadingStateCopyWithImpl(
      _$_MainLoadingState _value, $Res Function(_$_MainLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainLoadingState implements _MainLoadingState {
  const _$_MainLoadingState();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(Object error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(Object error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainSuccessState value) success,
    required TResult Function(_MainFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainSuccessState value)? success,
    TResult? Function(_MainFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainSuccessState value)? success,
    TResult Function(_MainFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MainLoadingState implements MainState {
  const factory _MainLoadingState() = _$_MainLoadingState;
}

/// @nodoc
abstract class _$$_MainSuccessStateCopyWith<$Res> {
  factory _$$_MainSuccessStateCopyWith(
          _$_MainSuccessState value, $Res Function(_$_MainSuccessState) then) =
      __$$_MainSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_MainSuccessStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainSuccessState>
    implements _$$_MainSuccessStateCopyWith<$Res> {
  __$$_MainSuccessStateCopyWithImpl(
      _$_MainSuccessState _value, $Res Function(_$_MainSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_MainSuccessState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_MainSuccessState implements _MainSuccessState {
  const _$_MainSuccessState({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'MainState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainSuccessState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainSuccessStateCopyWith<_$_MainSuccessState> get copyWith =>
      __$$_MainSuccessStateCopyWithImpl<_$_MainSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(Object error) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(Object error)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainSuccessState value) success,
    required TResult Function(_MainFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainSuccessState value)? success,
    TResult? Function(_MainFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainSuccessState value)? success,
    TResult Function(_MainFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _MainSuccessState implements MainState {
  const factory _MainSuccessState({required final UserModel user}) =
      _$_MainSuccessState;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$_MainSuccessStateCopyWith<_$_MainSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MainFailureStateCopyWith<$Res> {
  factory _$$_MainFailureStateCopyWith(
          _$_MainFailureState value, $Res Function(_$_MainFailureState) then) =
      __$$_MainFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_MainFailureStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainFailureState>
    implements _$$_MainFailureStateCopyWith<$Res> {
  __$$_MainFailureStateCopyWithImpl(
      _$_MainFailureState _value, $Res Function(_$_MainFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_MainFailureState(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_MainFailureState implements _MainFailureState {
  const _$_MainFailureState({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'MainState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainFailureStateCopyWith<_$_MainFailureState> get copyWith =>
      __$$_MainFailureStateCopyWithImpl<_$_MainFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(Object error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(Object error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainSuccessState value) success,
    required TResult Function(_MainFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainSuccessState value)? success,
    TResult? Function(_MainFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainSuccessState value)? success,
    TResult Function(_MainFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _MainFailureState implements MainState {
  const factory _MainFailureState({required final Object error}) =
      _$_MainFailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_MainFailureStateCopyWith<_$_MainFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
