// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchChats,
    required TResult Function(String name) createChat,
    required TResult Function(String id) removeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchChats,
    TResult? Function(String name)? createChat,
    TResult? Function(String id)? removeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchChats,
    TResult Function(String name)? createChat,
    TResult Function(String id)? removeChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_RemoveChat value) removeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChats value)? fetchChats,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_RemoveChat value)? removeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_RemoveChat value)? removeChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchChatsCopyWith<$Res> {
  factory _$$_FetchChatsCopyWith(
          _$_FetchChats value, $Res Function(_$_FetchChats) then) =
      __$$_FetchChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchChatsCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_FetchChats>
    implements _$$_FetchChatsCopyWith<$Res> {
  __$$_FetchChatsCopyWithImpl(
      _$_FetchChats _value, $Res Function(_$_FetchChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchChats(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchChats implements _FetchChats {
  const _$_FetchChats({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ChatsEvent.fetchChats(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchChats &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchChatsCopyWith<_$_FetchChats> get copyWith =>
      __$$_FetchChatsCopyWithImpl<_$_FetchChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchChats,
    required TResult Function(String name) createChat,
    required TResult Function(String id) removeChat,
  }) {
    return fetchChats(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchChats,
    TResult? Function(String name)? createChat,
    TResult? Function(String id)? removeChat,
  }) {
    return fetchChats?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchChats,
    TResult Function(String name)? createChat,
    TResult Function(String id)? removeChat,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_RemoveChat value) removeChat,
  }) {
    return fetchChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChats value)? fetchChats,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_RemoveChat value)? removeChat,
  }) {
    return fetchChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_RemoveChat value)? removeChat,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(this);
    }
    return orElse();
  }
}

abstract class _FetchChats implements ChatsEvent {
  const factory _FetchChats({required final String id}) = _$_FetchChats;

  String get id;
  @JsonKey(ignore: true)
  _$$_FetchChatsCopyWith<_$_FetchChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateChatCopyWith<$Res> {
  factory _$$_CreateChatCopyWith(
          _$_CreateChat value, $Res Function(_$_CreateChat) then) =
      __$$_CreateChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CreateChatCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_CreateChat>
    implements _$$_CreateChatCopyWith<$Res> {
  __$$_CreateChatCopyWithImpl(
      _$_CreateChat _value, $Res Function(_$_CreateChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CreateChat(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateChat implements _CreateChat {
  const _$_CreateChat({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ChatsEvent.createChat(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChat &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChatCopyWith<_$_CreateChat> get copyWith =>
      __$$_CreateChatCopyWithImpl<_$_CreateChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchChats,
    required TResult Function(String name) createChat,
    required TResult Function(String id) removeChat,
  }) {
    return createChat(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchChats,
    TResult? Function(String name)? createChat,
    TResult? Function(String id)? removeChat,
  }) {
    return createChat?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchChats,
    TResult Function(String name)? createChat,
    TResult Function(String id)? removeChat,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_RemoveChat value) removeChat,
  }) {
    return createChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChats value)? fetchChats,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_RemoveChat value)? removeChat,
  }) {
    return createChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_RemoveChat value)? removeChat,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(this);
    }
    return orElse();
  }
}

abstract class _CreateChat implements ChatsEvent {
  const factory _CreateChat({required final String name}) = _$_CreateChat;

  String get name;
  @JsonKey(ignore: true)
  _$$_CreateChatCopyWith<_$_CreateChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveChatCopyWith<$Res> {
  factory _$$_RemoveChatCopyWith(
          _$_RemoveChat value, $Res Function(_$_RemoveChat) then) =
      __$$_RemoveChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RemoveChatCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_RemoveChat>
    implements _$$_RemoveChatCopyWith<$Res> {
  __$$_RemoveChatCopyWithImpl(
      _$_RemoveChat _value, $Res Function(_$_RemoveChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RemoveChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveChat implements _RemoveChat {
  const _$_RemoveChat({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ChatsEvent.removeChat(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveChat &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveChatCopyWith<_$_RemoveChat> get copyWith =>
      __$$_RemoveChatCopyWithImpl<_$_RemoveChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchChats,
    required TResult Function(String name) createChat,
    required TResult Function(String id) removeChat,
  }) {
    return removeChat(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchChats,
    TResult? Function(String name)? createChat,
    TResult? Function(String id)? removeChat,
  }) {
    return removeChat?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchChats,
    TResult Function(String name)? createChat,
    TResult Function(String id)? removeChat,
    required TResult orElse(),
  }) {
    if (removeChat != null) {
      return removeChat(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_RemoveChat value) removeChat,
  }) {
    return removeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChats value)? fetchChats,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_RemoveChat value)? removeChat,
  }) {
    return removeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_RemoveChat value)? removeChat,
    required TResult orElse(),
  }) {
    if (removeChat != null) {
      return removeChat(this);
    }
    return orElse();
  }
}

abstract class _RemoveChat implements ChatsEvent {
  const factory _RemoveChat({required final String id}) = _$_RemoveChat;

  String get id;
  @JsonKey(ignore: true)
  _$$_RemoveChatCopyWith<_$_RemoveChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ConversationModel> chats, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ConversationModel> chats, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> chats, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsLoadingState value) loading,
    required TResult Function(_ChatsSuccessState value) success,
    required TResult Function(_ChatsEmptyState value) empty,
    required TResult Function(_ChatsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsLoadingState value)? loading,
    TResult? Function(_ChatsSuccessState value)? success,
    TResult? Function(_ChatsEmptyState value)? empty,
    TResult? Function(_ChatsFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsLoadingState value)? loading,
    TResult Function(_ChatsSuccessState value)? success,
    TResult Function(_ChatsEmptyState value)? empty,
    TResult Function(_ChatsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatsLoadingStateCopyWith<$Res> {
  factory _$$_ChatsLoadingStateCopyWith(_$_ChatsLoadingState value,
          $Res Function(_$_ChatsLoadingState) then) =
      __$$_ChatsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatsLoadingStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$_ChatsLoadingState>
    implements _$$_ChatsLoadingStateCopyWith<$Res> {
  __$$_ChatsLoadingStateCopyWithImpl(
      _$_ChatsLoadingState _value, $Res Function(_$_ChatsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatsLoadingState implements _ChatsLoadingState {
  const _$_ChatsLoadingState();

  @override
  String toString() {
    return 'ChatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ConversationModel> chats, bool hasReachedMax)
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
    TResult? Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    TResult Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    required TResult Function(_ChatsLoadingState value) loading,
    required TResult Function(_ChatsSuccessState value) success,
    required TResult Function(_ChatsEmptyState value) empty,
    required TResult Function(_ChatsFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsLoadingState value)? loading,
    TResult? Function(_ChatsSuccessState value)? success,
    TResult? Function(_ChatsEmptyState value)? empty,
    TResult? Function(_ChatsFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsLoadingState value)? loading,
    TResult Function(_ChatsSuccessState value)? success,
    TResult Function(_ChatsEmptyState value)? empty,
    TResult Function(_ChatsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatsLoadingState implements ChatsState {
  const factory _ChatsLoadingState() = _$_ChatsLoadingState;
}

/// @nodoc
abstract class _$$_ChatsSuccessStateCopyWith<$Res> {
  factory _$$_ChatsSuccessStateCopyWith(_$_ChatsSuccessState value,
          $Res Function(_$_ChatsSuccessState) then) =
      __$$_ChatsSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationModel> chats, bool hasReachedMax});
}

/// @nodoc
class __$$_ChatsSuccessStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$_ChatsSuccessState>
    implements _$$_ChatsSuccessStateCopyWith<$Res> {
  __$$_ChatsSuccessStateCopyWithImpl(
      _$_ChatsSuccessState _value, $Res Function(_$_ChatsSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ChatsSuccessState(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ConversationModel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatsSuccessState implements _ChatsSuccessState {
  const _$_ChatsSuccessState(
      {required final List<ConversationModel> chats,
      required this.hasReachedMax})
      : _chats = chats;

  final List<ConversationModel> _chats;
  @override
  List<ConversationModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ChatsState.success(chats: $chats, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsSuccessState &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chats), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsSuccessStateCopyWith<_$_ChatsSuccessState> get copyWith =>
      __$$_ChatsSuccessStateCopyWithImpl<_$_ChatsSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ConversationModel> chats, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object error) failure,
  }) {
    return success(chats, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ConversationModel> chats, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object error)? failure,
  }) {
    return success?.call(chats, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ConversationModel> chats, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(chats, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsLoadingState value) loading,
    required TResult Function(_ChatsSuccessState value) success,
    required TResult Function(_ChatsEmptyState value) empty,
    required TResult Function(_ChatsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsLoadingState value)? loading,
    TResult? Function(_ChatsSuccessState value)? success,
    TResult? Function(_ChatsEmptyState value)? empty,
    TResult? Function(_ChatsFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsLoadingState value)? loading,
    TResult Function(_ChatsSuccessState value)? success,
    TResult Function(_ChatsEmptyState value)? empty,
    TResult Function(_ChatsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ChatsSuccessState implements ChatsState {
  const factory _ChatsSuccessState(
      {required final List<ConversationModel> chats,
      required final bool hasReachedMax}) = _$_ChatsSuccessState;

  List<ConversationModel> get chats;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_ChatsSuccessStateCopyWith<_$_ChatsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatsEmptyStateCopyWith<$Res> {
  factory _$$_ChatsEmptyStateCopyWith(
          _$_ChatsEmptyState value, $Res Function(_$_ChatsEmptyState) then) =
      __$$_ChatsEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatsEmptyStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$_ChatsEmptyState>
    implements _$$_ChatsEmptyStateCopyWith<$Res> {
  __$$_ChatsEmptyStateCopyWithImpl(
      _$_ChatsEmptyState _value, $Res Function(_$_ChatsEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatsEmptyState implements _ChatsEmptyState {
  const _$_ChatsEmptyState();

  @override
  String toString() {
    return 'ChatsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatsEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ConversationModel> chats, bool hasReachedMax)
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
    TResult? Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    TResult Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    required TResult Function(_ChatsLoadingState value) loading,
    required TResult Function(_ChatsSuccessState value) success,
    required TResult Function(_ChatsEmptyState value) empty,
    required TResult Function(_ChatsFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsLoadingState value)? loading,
    TResult? Function(_ChatsSuccessState value)? success,
    TResult? Function(_ChatsEmptyState value)? empty,
    TResult? Function(_ChatsFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsLoadingState value)? loading,
    TResult Function(_ChatsSuccessState value)? success,
    TResult Function(_ChatsEmptyState value)? empty,
    TResult Function(_ChatsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ChatsEmptyState implements ChatsState {
  const factory _ChatsEmptyState() = _$_ChatsEmptyState;
}

/// @nodoc
abstract class _$$_ChatsFailureStateCopyWith<$Res> {
  factory _$$_ChatsFailureStateCopyWith(_$_ChatsFailureState value,
          $Res Function(_$_ChatsFailureState) then) =
      __$$_ChatsFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ChatsFailureStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$_ChatsFailureState>
    implements _$$_ChatsFailureStateCopyWith<$Res> {
  __$$_ChatsFailureStateCopyWithImpl(
      _$_ChatsFailureState _value, $Res Function(_$_ChatsFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ChatsFailureState(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ChatsFailureState implements _ChatsFailureState {
  const _$_ChatsFailureState({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ChatsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsFailureStateCopyWith<_$_ChatsFailureState> get copyWith =>
      __$$_ChatsFailureStateCopyWithImpl<_$_ChatsFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ConversationModel> chats, bool hasReachedMax)
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
    TResult? Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    TResult Function(List<ConversationModel> chats, bool hasReachedMax)?
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
    required TResult Function(_ChatsLoadingState value) loading,
    required TResult Function(_ChatsSuccessState value) success,
    required TResult Function(_ChatsEmptyState value) empty,
    required TResult Function(_ChatsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsLoadingState value)? loading,
    TResult? Function(_ChatsSuccessState value)? success,
    TResult? Function(_ChatsEmptyState value)? empty,
    TResult? Function(_ChatsFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsLoadingState value)? loading,
    TResult Function(_ChatsSuccessState value)? success,
    TResult Function(_ChatsEmptyState value)? empty,
    TResult Function(_ChatsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ChatsFailureState implements ChatsState {
  const factory _ChatsFailureState({required final Object error}) =
      _$_ChatsFailureState;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ChatsFailureStateCopyWith<_$_ChatsFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
