// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsEventCopyWith<ContactsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchContactsCopyWith<$Res>
    implements $ContactsEventCopyWith<$Res> {
  factory _$$_FetchContactsCopyWith(
          _$_FetchContacts value, $Res Function(_$_FetchContacts) then) =
      __$$_FetchContactsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchContactsCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$_FetchContacts>
    implements _$$_FetchContactsCopyWith<$Res> {
  __$$_FetchContactsCopyWithImpl(
      _$_FetchContacts _value, $Res Function(_$_FetchContacts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchContacts(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchContacts implements _FetchContacts {
  const _$_FetchContacts({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ContactsEvent.fetchContacts(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchContacts &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchContactsCopyWith<_$_FetchContacts> get copyWith =>
      __$$_FetchContactsCopyWithImpl<_$_FetchContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchContacts,
  }) {
    return fetchContacts(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchContacts,
  }) {
    return fetchContacts?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchContacts,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
  }) {
    return fetchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
  }) {
    return fetchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts(this);
    }
    return orElse();
  }
}

abstract class _FetchContacts implements ContactsEvent {
  const factory _FetchContacts({required final String id}) = _$_FetchContacts;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_FetchContactsCopyWith<_$_FetchContacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> contacts, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsLoadingState value) loading,
    required TResult Function(_ContactsSuccessState value) success,
    required TResult Function(_ContactsEmptyState value) empty,
    required TResult Function(_ContactsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsLoadingState value)? loading,
    TResult? Function(_ContactsSuccessState value)? success,
    TResult? Function(_ContactsEmptyState value)? empty,
    TResult? Function(_ContactsFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsLoadingState value)? loading,
    TResult Function(_ContactsSuccessState value)? success,
    TResult Function(_ContactsEmptyState value)? empty,
    TResult Function(_ContactsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactsLoadingStateCopyWith<$Res> {
  factory _$$_ContactsLoadingStateCopyWith(_$_ContactsLoadingState value,
          $Res Function(_$_ContactsLoadingState) then) =
      __$$_ContactsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactsLoadingStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsLoadingState>
    implements _$$_ContactsLoadingStateCopyWith<$Res> {
  __$$_ContactsLoadingStateCopyWithImpl(_$_ContactsLoadingState _value,
      $Res Function(_$_ContactsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactsLoadingState implements _ContactsLoadingState {
  const _$_ContactsLoadingState();

  @override
  String toString() {
    return 'ContactsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> contacts, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult Function()? empty,
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
    required TResult Function(_ContactsLoadingState value) loading,
    required TResult Function(_ContactsSuccessState value) success,
    required TResult Function(_ContactsEmptyState value) empty,
    required TResult Function(_ContactsFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsLoadingState value)? loading,
    TResult? Function(_ContactsSuccessState value)? success,
    TResult? Function(_ContactsEmptyState value)? empty,
    TResult? Function(_ContactsFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsLoadingState value)? loading,
    TResult Function(_ContactsSuccessState value)? success,
    TResult Function(_ContactsEmptyState value)? empty,
    TResult Function(_ContactsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactsLoadingState implements ContactsState {
  const factory _ContactsLoadingState() = _$_ContactsLoadingState;
}

/// @nodoc
abstract class _$$_ContactsSuccessStateCopyWith<$Res> {
  factory _$$_ContactsSuccessStateCopyWith(_$_ContactsSuccessState value,
          $Res Function(_$_ContactsSuccessState) then) =
      __$$_ContactsSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> contacts, bool hasReachedMax});
}

/// @nodoc
class __$$_ContactsSuccessStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsSuccessState>
    implements _$$_ContactsSuccessStateCopyWith<$Res> {
  __$$_ContactsSuccessStateCopyWithImpl(_$_ContactsSuccessState _value,
      $Res Function(_$_ContactsSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ContactsSuccessState(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContactsSuccessState implements _ContactsSuccessState {
  const _$_ContactsSuccessState(
      {required final List<UserModel> contacts, required this.hasReachedMax})
      : _contacts = contacts;

  final List<UserModel> _contacts;
  @override
  List<UserModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ContactsState.success(contacts: $contacts, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsSuccessState &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsSuccessStateCopyWith<_$_ContactsSuccessState> get copyWith =>
      __$$_ContactsSuccessStateCopyWithImpl<_$_ContactsSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> contacts, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return success(contacts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return success?.call(contacts, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(contacts, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsLoadingState value) loading,
    required TResult Function(_ContactsSuccessState value) success,
    required TResult Function(_ContactsEmptyState value) empty,
    required TResult Function(_ContactsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsLoadingState value)? loading,
    TResult? Function(_ContactsSuccessState value)? success,
    TResult? Function(_ContactsEmptyState value)? empty,
    TResult? Function(_ContactsFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsLoadingState value)? loading,
    TResult Function(_ContactsSuccessState value)? success,
    TResult Function(_ContactsEmptyState value)? empty,
    TResult Function(_ContactsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactsSuccessState implements ContactsState {
  const factory _ContactsSuccessState(
      {required final List<UserModel> contacts,
      required final bool hasReachedMax}) = _$_ContactsSuccessState;

  List<UserModel> get contacts;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_ContactsSuccessStateCopyWith<_$_ContactsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactsEmptyStateCopyWith<$Res> {
  factory _$$_ContactsEmptyStateCopyWith(_$_ContactsEmptyState value,
          $Res Function(_$_ContactsEmptyState) then) =
      __$$_ContactsEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactsEmptyStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsEmptyState>
    implements _$$_ContactsEmptyStateCopyWith<$Res> {
  __$$_ContactsEmptyStateCopyWithImpl(
      _$_ContactsEmptyState _value, $Res Function(_$_ContactsEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactsEmptyState implements _ContactsEmptyState {
  const _$_ContactsEmptyState();

  @override
  String toString() {
    return 'ContactsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactsEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> contacts, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsLoadingState value) loading,
    required TResult Function(_ContactsSuccessState value) success,
    required TResult Function(_ContactsEmptyState value) empty,
    required TResult Function(_ContactsFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsLoadingState value)? loading,
    TResult? Function(_ContactsSuccessState value)? success,
    TResult? Function(_ContactsEmptyState value)? empty,
    TResult? Function(_ContactsFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsLoadingState value)? loading,
    TResult Function(_ContactsSuccessState value)? success,
    TResult Function(_ContactsEmptyState value)? empty,
    TResult Function(_ContactsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ContactsEmptyState implements ContactsState {
  const factory _ContactsEmptyState() = _$_ContactsEmptyState;
}

/// @nodoc
abstract class _$$_ContactsFailureStateCopyWith<$Res> {
  factory _$$_ContactsFailureStateCopyWith(_$_ContactsFailureState value,
          $Res Function(_$_ContactsFailureState) then) =
      __$$_ContactsFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ContactsFailureStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$_ContactsFailureState>
    implements _$$_ContactsFailureStateCopyWith<$Res> {
  __$$_ContactsFailureStateCopyWithImpl(_$_ContactsFailureState _value,
      $Res Function(_$_ContactsFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ContactsFailureState(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ContactsFailureState implements _ContactsFailureState {
  const _$_ContactsFailureState({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ContactsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsFailureStateCopyWith<_$_ContactsFailureState> get copyWith =>
      __$$_ContactsFailureStateCopyWithImpl<_$_ContactsFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UserModel> contacts, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UserModel> contacts, bool hasReachedMax)? success,
    TResult Function()? empty,
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
    required TResult Function(_ContactsLoadingState value) loading,
    required TResult Function(_ContactsSuccessState value) success,
    required TResult Function(_ContactsEmptyState value) empty,
    required TResult Function(_ContactsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsLoadingState value)? loading,
    TResult? Function(_ContactsSuccessState value)? success,
    TResult? Function(_ContactsEmptyState value)? empty,
    TResult? Function(_ContactsFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsLoadingState value)? loading,
    TResult Function(_ContactsSuccessState value)? success,
    TResult Function(_ContactsEmptyState value)? empty,
    TResult Function(_ContactsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ContactsFailureState implements ContactsState {
  const factory _ContactsFailureState({required final Object error}) =
      _$_ContactsFailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ContactsFailureStateCopyWith<_$_ContactsFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
