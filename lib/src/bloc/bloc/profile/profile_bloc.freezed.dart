// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function() signOut,
    required TResult Function(File? file) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
    TResult? Function()? signOut,
    TResult? Function(File? file)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function()? signOut,
    TResult Function(File? file)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateAvatar value) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateAvatar value)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateAvatar value)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$_FetchUser>
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
    return 'ProfileEvent.fetchUser()';
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
    required TResult Function() signOut,
    required TResult Function(File? file) updateAvatar,
  }) {
    return fetchUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
    TResult? Function()? signOut,
    TResult? Function(File? file)? updateAvatar,
  }) {
    return fetchUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function()? signOut,
    TResult Function(File? file)? updateAvatar,
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
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateAvatar value) updateAvatar,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateAvatar value)? updateAvatar,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateAvatar value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class _FetchUser implements ProfileEvent {
  const factory _FetchUser() = _$_FetchUser;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function() signOut,
    required TResult Function(File? file) updateAvatar,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
    TResult? Function()? signOut,
    TResult? Function(File? file)? updateAvatar,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function()? signOut,
    TResult Function(File? file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateAvatar value) updateAvatar,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateAvatar value)? updateAvatar,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateAvatar value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements ProfileEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_UpdateAvatarCopyWith<$Res> {
  factory _$$_UpdateAvatarCopyWith(
          _$_UpdateAvatar value, $Res Function(_$_UpdateAvatar) then) =
      __$$_UpdateAvatarCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$_UpdateAvatarCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UpdateAvatar>
    implements _$$_UpdateAvatarCopyWith<$Res> {
  __$$_UpdateAvatarCopyWithImpl(
      _$_UpdateAvatar _value, $Res Function(_$_UpdateAvatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_UpdateAvatar(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateAvatar implements _UpdateAvatar {
  const _$_UpdateAvatar({this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'ProfileEvent.updateAvatar(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAvatar &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAvatarCopyWith<_$_UpdateAvatar> get copyWith =>
      __$$_UpdateAvatarCopyWithImpl<_$_UpdateAvatar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function() signOut,
    required TResult Function(File? file) updateAvatar,
  }) {
    return updateAvatar(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUser,
    TResult? Function()? signOut,
    TResult? Function(File? file)? updateAvatar,
  }) {
    return updateAvatar?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function()? signOut,
    TResult Function(File? file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateAvatar value) updateAvatar,
  }) {
    return updateAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateAvatar value)? updateAvatar,
  }) {
    return updateAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateAvatar value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvatar implements ProfileEvent {
  const factory _UpdateAvatar({final File? file}) = _$_UpdateAvatar;

  File? get file;
  @JsonKey(ignore: true)
  _$$_UpdateAvatarCopyWith<_$_UpdateAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
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
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileSuccessState value) success,
    required TResult Function(_ProfileFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileSuccessState value)? success,
    TResult? Function(_ProfileFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileSuccessState value)? success,
    TResult Function(_ProfileFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProfileLoadingStateCopyWith<$Res> {
  factory _$$_ProfileLoadingStateCopyWith(_$_ProfileLoadingState value,
          $Res Function(_$_ProfileLoadingState) then) =
      __$$_ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileLoadingState>
    implements _$$_ProfileLoadingStateCopyWith<$Res> {
  __$$_ProfileLoadingStateCopyWithImpl(_$_ProfileLoadingState _value,
      $Res Function(_$_ProfileLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProfileLoadingState implements _ProfileLoadingState {
  const _$_ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileLoadingState);
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
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileSuccessState value) success,
    required TResult Function(_ProfileFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileSuccessState value)? success,
    TResult? Function(_ProfileFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileSuccessState value)? success,
    TResult Function(_ProfileFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadingState implements ProfileState {
  const factory _ProfileLoadingState() = _$_ProfileLoadingState;
}

/// @nodoc
abstract class _$$_ProfileSuccessStateCopyWith<$Res> {
  factory _$$_ProfileSuccessStateCopyWith(_$_ProfileSuccessState value,
          $Res Function(_$_ProfileSuccessState) then) =
      __$$_ProfileSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ProfileSuccessStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileSuccessState>
    implements _$$_ProfileSuccessStateCopyWith<$Res> {
  __$$_ProfileSuccessStateCopyWithImpl(_$_ProfileSuccessState _value,
      $Res Function(_$_ProfileSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ProfileSuccessState(
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

class _$_ProfileSuccessState implements _ProfileSuccessState {
  const _$_ProfileSuccessState({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileSuccessState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileSuccessStateCopyWith<_$_ProfileSuccessState> get copyWith =>
      __$$_ProfileSuccessStateCopyWithImpl<_$_ProfileSuccessState>(
          this, _$identity);

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
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileSuccessState value) success,
    required TResult Function(_ProfileFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileSuccessState value)? success,
    TResult? Function(_ProfileFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileSuccessState value)? success,
    TResult Function(_ProfileFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ProfileSuccessState implements ProfileState {
  const factory _ProfileSuccessState({required final UserModel user}) =
      _$_ProfileSuccessState;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$_ProfileSuccessStateCopyWith<_$_ProfileSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileFailureStateCopyWith<$Res> {
  factory _$$_ProfileFailureStateCopyWith(_$_ProfileFailureState value,
          $Res Function(_$_ProfileFailureState) then) =
      __$$_ProfileFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ProfileFailureStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileFailureState>
    implements _$$_ProfileFailureStateCopyWith<$Res> {
  __$$_ProfileFailureStateCopyWithImpl(_$_ProfileFailureState _value,
      $Res Function(_$_ProfileFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ProfileFailureState(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ProfileFailureState implements _ProfileFailureState {
  const _$_ProfileFailureState({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ProfileState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFailureStateCopyWith<_$_ProfileFailureState> get copyWith =>
      __$$_ProfileFailureStateCopyWithImpl<_$_ProfileFailureState>(
          this, _$identity);

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
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(_ProfileSuccessState value) success,
    required TResult Function(_ProfileFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoadingState value)? loading,
    TResult? Function(_ProfileSuccessState value)? success,
    TResult? Function(_ProfileFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(_ProfileSuccessState value)? success,
    TResult Function(_ProfileFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ProfileFailureState implements ProfileState {
  const factory _ProfileFailureState({required final Object error}) =
      _$_ProfileFailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ProfileFailureStateCopyWith<_$_ProfileFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
