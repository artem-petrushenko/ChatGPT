// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchConversations,
    required TResult Function(String name) createConversation,
    required TResult Function(String id) removeConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchConversations,
    TResult? Function(String name)? createConversation,
    TResult? Function(String id)? removeConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchConversations,
    TResult Function(String name)? createConversation,
    TResult Function(String id)? removeConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_CreateConversation value) createConversation,
    required TResult Function(_RemoveConversation value) removeConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_CreateConversation value)? createConversation,
    TResult? Function(_RemoveConversation value)? removeConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_CreateConversation value)? createConversation,
    TResult Function(_RemoveConversation value)? removeConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationsEventCopyWith<$Res> {
  factory $ConversationsEventCopyWith(
          ConversationsEvent value, $Res Function(ConversationsEvent) then) =
      _$ConversationsEventCopyWithImpl<$Res, ConversationsEvent>;
}

/// @nodoc
class _$ConversationsEventCopyWithImpl<$Res, $Val extends ConversationsEvent>
    implements $ConversationsEventCopyWith<$Res> {
  _$ConversationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchConversationsCopyWith<$Res> {
  factory _$$_FetchConversationsCopyWith(_$_FetchConversations value,
          $Res Function(_$_FetchConversations) then) =
      __$$_FetchConversationsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchConversationsCopyWithImpl<$Res>
    extends _$ConversationsEventCopyWithImpl<$Res, _$_FetchConversations>
    implements _$$_FetchConversationsCopyWith<$Res> {
  __$$_FetchConversationsCopyWithImpl(
      _$_FetchConversations _value, $Res Function(_$_FetchConversations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchConversations(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchConversations implements _FetchConversations {
  const _$_FetchConversations({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ConversationsEvent.fetchConversations(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchConversations &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchConversationsCopyWith<_$_FetchConversations> get copyWith =>
      __$$_FetchConversationsCopyWithImpl<_$_FetchConversations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchConversations,
    required TResult Function(String name) createConversation,
    required TResult Function(String id) removeConversation,
  }) {
    return fetchConversations(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchConversations,
    TResult? Function(String name)? createConversation,
    TResult? Function(String id)? removeConversation,
  }) {
    return fetchConversations?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchConversations,
    TResult Function(String name)? createConversation,
    TResult Function(String id)? removeConversation,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_CreateConversation value) createConversation,
    required TResult Function(_RemoveConversation value) removeConversation,
  }) {
    return fetchConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_CreateConversation value)? createConversation,
    TResult? Function(_RemoveConversation value)? removeConversation,
  }) {
    return fetchConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_CreateConversation value)? createConversation,
    TResult Function(_RemoveConversation value)? removeConversation,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations(this);
    }
    return orElse();
  }
}

abstract class _FetchConversations implements ConversationsEvent {
  const factory _FetchConversations({required final String id}) =
      _$_FetchConversations;

  String get id;
  @JsonKey(ignore: true)
  _$$_FetchConversationsCopyWith<_$_FetchConversations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateConversationCopyWith<$Res> {
  factory _$$_CreateConversationCopyWith(_$_CreateConversation value,
          $Res Function(_$_CreateConversation) then) =
      __$$_CreateConversationCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreateConversationCopyWithImpl<$Res>
    extends _$ConversationsEventCopyWithImpl<$Res, _$_CreateConversation>
    implements _$$_CreateConversationCopyWith<$Res> {
  __$$_CreateConversationCopyWithImpl(
      _$_CreateConversation _value, $Res Function(_$_CreateConversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreateConversation(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateConversation implements _CreateConversation {
  const _$_CreateConversation({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ConversationsEvent.createConversation(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateConversation &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateConversationCopyWith<_$_CreateConversation> get copyWith =>
      __$$_CreateConversationCopyWithImpl<_$_CreateConversation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchConversations,
    required TResult Function(String name) createConversation,
    required TResult Function(String id) removeConversation,
  }) {
    return createConversation(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchConversations,
    TResult? Function(String name)? createConversation,
    TResult? Function(String id)? removeConversation,
  }) {
    return createConversation?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchConversations,
    TResult Function(String name)? createConversation,
    TResult Function(String id)? removeConversation,
    required TResult orElse(),
  }) {
    if (createConversation != null) {
      return createConversation(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_CreateConversation value) createConversation,
    required TResult Function(_RemoveConversation value) removeConversation,
  }) {
    return createConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_CreateConversation value)? createConversation,
    TResult? Function(_RemoveConversation value)? removeConversation,
  }) {
    return createConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_CreateConversation value)? createConversation,
    TResult Function(_RemoveConversation value)? removeConversation,
    required TResult orElse(),
  }) {
    if (createConversation != null) {
      return createConversation(this);
    }
    return orElse();
  }
}

abstract class _CreateConversation implements ConversationsEvent {
  const factory _CreateConversation({required final String name}) =
      _$_CreateConversation;

  String get name;
  @JsonKey(ignore: true)
  _$$_CreateConversationCopyWith<_$_CreateConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveConversationCopyWith<$Res> {
  factory _$$_RemoveConversationCopyWith(_$_RemoveConversation value,
          $Res Function(_$_RemoveConversation) then) =
      __$$_RemoveConversationCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RemoveConversationCopyWithImpl<$Res>
    extends _$ConversationsEventCopyWithImpl<$Res, _$_RemoveConversation>
    implements _$$_RemoveConversationCopyWith<$Res> {
  __$$_RemoveConversationCopyWithImpl(
      _$_RemoveConversation _value, $Res Function(_$_RemoveConversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RemoveConversation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveConversation implements _RemoveConversation {
  const _$_RemoveConversation({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ConversationsEvent.removeConversation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveConversation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveConversationCopyWith<_$_RemoveConversation> get copyWith =>
      __$$_RemoveConversationCopyWithImpl<_$_RemoveConversation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchConversations,
    required TResult Function(String name) createConversation,
    required TResult Function(String id) removeConversation,
  }) {
    return removeConversation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchConversations,
    TResult? Function(String name)? createConversation,
    TResult? Function(String id)? removeConversation,
  }) {
    return removeConversation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchConversations,
    TResult Function(String name)? createConversation,
    TResult Function(String id)? removeConversation,
    required TResult orElse(),
  }) {
    if (removeConversation != null) {
      return removeConversation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_CreateConversation value) createConversation,
    required TResult Function(_RemoveConversation value) removeConversation,
  }) {
    return removeConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_CreateConversation value)? createConversation,
    TResult? Function(_RemoveConversation value)? removeConversation,
  }) {
    return removeConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_CreateConversation value)? createConversation,
    TResult Function(_RemoveConversation value)? removeConversation,
    required TResult orElse(),
  }) {
    if (removeConversation != null) {
      return removeConversation(this);
    }
    return orElse();
  }
}

abstract class _RemoveConversation implements ConversationsEvent {
  const factory _RemoveConversation({required final String id}) =
      _$_RemoveConversation;

  String get id;
  @JsonKey(ignore: true)
  _$$_RemoveConversationCopyWith<_$_RemoveConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ConversationModel> conversations, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationsLoadingState value) loading,
    required TResult Function(_ConversationsSuccessState value) success,
    required TResult Function(_ConversationsEmptyState value) empty,
    required TResult Function(_ConversationsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationsLoadingState value)? loading,
    TResult? Function(_ConversationsSuccessState value)? success,
    TResult? Function(_ConversationsEmptyState value)? empty,
    TResult? Function(_ConversationsFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationsLoadingState value)? loading,
    TResult Function(_ConversationsSuccessState value)? success,
    TResult Function(_ConversationsEmptyState value)? empty,
    TResult Function(_ConversationsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationsStateCopyWith<$Res> {
  factory $ConversationsStateCopyWith(
          ConversationsState value, $Res Function(ConversationsState) then) =
      _$ConversationsStateCopyWithImpl<$Res, ConversationsState>;
}

/// @nodoc
class _$ConversationsStateCopyWithImpl<$Res, $Val extends ConversationsState>
    implements $ConversationsStateCopyWith<$Res> {
  _$ConversationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConversationsLoadingStateCopyWith<$Res> {
  factory _$$_ConversationsLoadingStateCopyWith(
          _$_ConversationsLoadingState value,
          $Res Function(_$_ConversationsLoadingState) then) =
      __$$_ConversationsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConversationsLoadingStateCopyWithImpl<$Res>
    extends _$ConversationsStateCopyWithImpl<$Res, _$_ConversationsLoadingState>
    implements _$$_ConversationsLoadingStateCopyWith<$Res> {
  __$$_ConversationsLoadingStateCopyWithImpl(
      _$_ConversationsLoadingState _value,
      $Res Function(_$_ConversationsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConversationsLoadingState implements _ConversationsLoadingState {
  const _$_ConversationsLoadingState();

  @override
  String toString() {
    return 'ConversationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ConversationModel> conversations, bool hasReachedMax)
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
    TResult? Function(
            List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> conversations, bool hasReachedMax)?
        success,
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
    required TResult Function(_ConversationsLoadingState value) loading,
    required TResult Function(_ConversationsSuccessState value) success,
    required TResult Function(_ConversationsEmptyState value) empty,
    required TResult Function(_ConversationsFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationsLoadingState value)? loading,
    TResult? Function(_ConversationsSuccessState value)? success,
    TResult? Function(_ConversationsEmptyState value)? empty,
    TResult? Function(_ConversationsFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationsLoadingState value)? loading,
    TResult Function(_ConversationsSuccessState value)? success,
    TResult Function(_ConversationsEmptyState value)? empty,
    TResult Function(_ConversationsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ConversationsLoadingState implements ConversationsState {
  const factory _ConversationsLoadingState() = _$_ConversationsLoadingState;
}

/// @nodoc
abstract class _$$_ConversationsSuccessStateCopyWith<$Res> {
  factory _$$_ConversationsSuccessStateCopyWith(
          _$_ConversationsSuccessState value,
          $Res Function(_$_ConversationsSuccessState) then) =
      __$$_ConversationsSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationModel> conversations, bool hasReachedMax});
}

/// @nodoc
class __$$_ConversationsSuccessStateCopyWithImpl<$Res>
    extends _$ConversationsStateCopyWithImpl<$Res, _$_ConversationsSuccessState>
    implements _$$_ConversationsSuccessStateCopyWith<$Res> {
  __$$_ConversationsSuccessStateCopyWithImpl(
      _$_ConversationsSuccessState _value,
      $Res Function(_$_ConversationsSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ConversationsSuccessState(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConversationsSuccessState implements _ConversationsSuccessState {
  const _$_ConversationsSuccessState(
      {required final List<ConversationModel> conversations,
      required this.hasReachedMax})
      : _conversations = conversations;

  final List<ConversationModel> _conversations;
  @override
  List<ConversationModel> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ConversationsState.success(conversations: $conversations, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationsSuccessState &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_conversations), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationsSuccessStateCopyWith<_$_ConversationsSuccessState>
      get copyWith => __$$_ConversationsSuccessStateCopyWithImpl<
          _$_ConversationsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ConversationModel> conversations, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return success(conversations, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return success?.call(conversations, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(conversations, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationsLoadingState value) loading,
    required TResult Function(_ConversationsSuccessState value) success,
    required TResult Function(_ConversationsEmptyState value) empty,
    required TResult Function(_ConversationsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationsLoadingState value)? loading,
    TResult? Function(_ConversationsSuccessState value)? success,
    TResult? Function(_ConversationsEmptyState value)? empty,
    TResult? Function(_ConversationsFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationsLoadingState value)? loading,
    TResult Function(_ConversationsSuccessState value)? success,
    TResult Function(_ConversationsEmptyState value)? empty,
    TResult Function(_ConversationsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ConversationsSuccessState implements ConversationsState {
  const factory _ConversationsSuccessState(
      {required final List<ConversationModel> conversations,
      required final bool hasReachedMax}) = _$_ConversationsSuccessState;

  List<ConversationModel> get conversations;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_ConversationsSuccessStateCopyWith<_$_ConversationsSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConversationsEmptyStateCopyWith<$Res> {
  factory _$$_ConversationsEmptyStateCopyWith(_$_ConversationsEmptyState value,
          $Res Function(_$_ConversationsEmptyState) then) =
      __$$_ConversationsEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConversationsEmptyStateCopyWithImpl<$Res>
    extends _$ConversationsStateCopyWithImpl<$Res, _$_ConversationsEmptyState>
    implements _$$_ConversationsEmptyStateCopyWith<$Res> {
  __$$_ConversationsEmptyStateCopyWithImpl(_$_ConversationsEmptyState _value,
      $Res Function(_$_ConversationsEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConversationsEmptyState implements _ConversationsEmptyState {
  const _$_ConversationsEmptyState();

  @override
  String toString() {
    return 'ConversationsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationsEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ConversationModel> conversations, bool hasReachedMax)
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
    TResult? Function(
            List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> conversations, bool hasReachedMax)?
        success,
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
    required TResult Function(_ConversationsLoadingState value) loading,
    required TResult Function(_ConversationsSuccessState value) success,
    required TResult Function(_ConversationsEmptyState value) empty,
    required TResult Function(_ConversationsFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationsLoadingState value)? loading,
    TResult? Function(_ConversationsSuccessState value)? success,
    TResult? Function(_ConversationsEmptyState value)? empty,
    TResult? Function(_ConversationsFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationsLoadingState value)? loading,
    TResult Function(_ConversationsSuccessState value)? success,
    TResult Function(_ConversationsEmptyState value)? empty,
    TResult Function(_ConversationsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ConversationsEmptyState implements ConversationsState {
  const factory _ConversationsEmptyState() = _$_ConversationsEmptyState;
}

/// @nodoc
abstract class _$$_ConversationsFailureStateCopyWith<$Res> {
  factory _$$_ConversationsFailureStateCopyWith(
          _$_ConversationsFailureState value,
          $Res Function(_$_ConversationsFailureState) then) =
      __$$_ConversationsFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ConversationsFailureStateCopyWithImpl<$Res>
    extends _$ConversationsStateCopyWithImpl<$Res, _$_ConversationsFailureState>
    implements _$$_ConversationsFailureStateCopyWith<$Res> {
  __$$_ConversationsFailureStateCopyWithImpl(
      _$_ConversationsFailureState _value,
      $Res Function(_$_ConversationsFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ConversationsFailureState(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ConversationsFailureState implements _ConversationsFailureState {
  const _$_ConversationsFailureState({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ConversationsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationsFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationsFailureStateCopyWith<_$_ConversationsFailureState>
      get copyWith => __$$_ConversationsFailureStateCopyWithImpl<
          _$_ConversationsFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ConversationModel> conversations, bool hasReachedMax)
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
    TResult? Function(
            List<ConversationModel> conversations, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> conversations, bool hasReachedMax)?
        success,
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
    required TResult Function(_ConversationsLoadingState value) loading,
    required TResult Function(_ConversationsSuccessState value) success,
    required TResult Function(_ConversationsEmptyState value) empty,
    required TResult Function(_ConversationsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationsLoadingState value)? loading,
    TResult? Function(_ConversationsSuccessState value)? success,
    TResult? Function(_ConversationsEmptyState value)? empty,
    TResult? Function(_ConversationsFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationsLoadingState value)? loading,
    TResult Function(_ConversationsSuccessState value)? success,
    TResult Function(_ConversationsEmptyState value)? empty,
    TResult Function(_ConversationsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ConversationsFailureState implements ConversationsState {
  const factory _ConversationsFailureState({required final Object error}) =
      _$_ConversationsFailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ConversationsFailureStateCopyWith<_$_ConversationsFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
