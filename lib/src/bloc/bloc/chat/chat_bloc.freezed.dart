// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object? error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object? error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoadingState value) loading,
    required TResult Function(_ChatSuccessState value) success,
    required TResult Function(_ChatEmptyState value) empty,
    required TResult Function(_ChatFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoadingState value)? loading,
    TResult? Function(_ChatSuccessState value)? success,
    TResult? Function(_ChatEmptyState value)? empty,
    TResult? Function(_ChatFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoadingState value)? loading,
    TResult Function(_ChatSuccessState value)? success,
    TResult Function(_ChatEmptyState value)? empty,
    TResult Function(_ChatFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatLoadingStateCopyWith<$Res> {
  factory _$$_ChatLoadingStateCopyWith(
          _$_ChatLoadingState value, $Res Function(_$_ChatLoadingState) then) =
      __$$_ChatLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatLoadingStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatLoadingState>
    implements _$$_ChatLoadingStateCopyWith<$Res> {
  __$$_ChatLoadingStateCopyWithImpl(
      _$_ChatLoadingState _value, $Res Function(_$_ChatLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatLoadingState implements _ChatLoadingState {
  const _$_ChatLoadingState();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object? error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object? error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object? error)? failure,
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
    required TResult Function(_ChatLoadingState value) loading,
    required TResult Function(_ChatSuccessState value) success,
    required TResult Function(_ChatEmptyState value) empty,
    required TResult Function(_ChatFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoadingState value)? loading,
    TResult? Function(_ChatSuccessState value)? success,
    TResult? Function(_ChatEmptyState value)? empty,
    TResult? Function(_ChatFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoadingState value)? loading,
    TResult Function(_ChatSuccessState value)? success,
    TResult Function(_ChatEmptyState value)? empty,
    TResult Function(_ChatFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatLoadingState implements ChatState {
  const factory _ChatLoadingState() = _$_ChatLoadingState;
}

/// @nodoc
abstract class _$$_ChatSuccessStateCopyWith<$Res> {
  factory _$$_ChatSuccessStateCopyWith(
          _$_ChatSuccessState value, $Res Function(_$_ChatSuccessState) then) =
      __$$_ChatSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MessageModel> messages, bool hasResponse, bool hasReachedMax});
}

/// @nodoc
class __$$_ChatSuccessStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatSuccessState>
    implements _$$_ChatSuccessStateCopyWith<$Res> {
  __$$_ChatSuccessStateCopyWithImpl(
      _$_ChatSuccessState _value, $Res Function(_$_ChatSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasResponse = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ChatSuccessState(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      hasResponse: null == hasResponse
          ? _value.hasResponse
          : hasResponse // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatSuccessState implements _ChatSuccessState {
  const _$_ChatSuccessState(
      {required final List<MessageModel> messages,
      required this.hasResponse,
      required this.hasReachedMax})
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool hasResponse;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ChatState.success(messages: $messages, hasResponse: $hasResponse, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSuccessState &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.hasResponse, hasResponse) ||
                other.hasResponse == hasResponse) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      hasResponse,
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSuccessStateCopyWith<_$_ChatSuccessState> get copyWith =>
      __$$_ChatSuccessStateCopyWithImpl<_$_ChatSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object? error) failure,
  }) {
    return success(messages, hasResponse, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object? error)? failure,
  }) {
    return success?.call(messages, hasResponse, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(messages, hasResponse, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoadingState value) loading,
    required TResult Function(_ChatSuccessState value) success,
    required TResult Function(_ChatEmptyState value) empty,
    required TResult Function(_ChatFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoadingState value)? loading,
    TResult? Function(_ChatSuccessState value)? success,
    TResult? Function(_ChatEmptyState value)? empty,
    TResult? Function(_ChatFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoadingState value)? loading,
    TResult Function(_ChatSuccessState value)? success,
    TResult Function(_ChatEmptyState value)? empty,
    TResult Function(_ChatFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ChatSuccessState implements ChatState {
  const factory _ChatSuccessState(
      {required final List<MessageModel> messages,
      required final bool hasResponse,
      required final bool hasReachedMax}) = _$_ChatSuccessState;

  List<MessageModel> get messages;
  bool get hasResponse;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_ChatSuccessStateCopyWith<_$_ChatSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatEmptyStateCopyWith<$Res> {
  factory _$$_ChatEmptyStateCopyWith(
          _$_ChatEmptyState value, $Res Function(_$_ChatEmptyState) then) =
      __$$_ChatEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatEmptyStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatEmptyState>
    implements _$$_ChatEmptyStateCopyWith<$Res> {
  __$$_ChatEmptyStateCopyWithImpl(
      _$_ChatEmptyState _value, $Res Function(_$_ChatEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatEmptyState implements _ChatEmptyState {
  const _$_ChatEmptyState();

  @override
  String toString() {
    return 'ChatState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object? error) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object? error)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object? error)? failure,
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
    required TResult Function(_ChatLoadingState value) loading,
    required TResult Function(_ChatSuccessState value) success,
    required TResult Function(_ChatEmptyState value) empty,
    required TResult Function(_ChatFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoadingState value)? loading,
    TResult? Function(_ChatSuccessState value)? success,
    TResult? Function(_ChatEmptyState value)? empty,
    TResult? Function(_ChatFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoadingState value)? loading,
    TResult Function(_ChatSuccessState value)? success,
    TResult Function(_ChatEmptyState value)? empty,
    TResult Function(_ChatFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ChatEmptyState implements ChatState {
  const factory _ChatEmptyState() = _$_ChatEmptyState;
}

/// @nodoc
abstract class _$$_ChatFailureStateCopyWith<$Res> {
  factory _$$_ChatFailureStateCopyWith(
          _$_ChatFailureState value, $Res Function(_$_ChatFailureState) then) =
      __$$_ChatFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$_ChatFailureStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatFailureState>
    implements _$$_ChatFailureStateCopyWith<$Res> {
  __$$_ChatFailureStateCopyWithImpl(
      _$_ChatFailureState _value, $Res Function(_$_ChatFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ChatFailureState(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ChatFailureState implements _ChatFailureState {
  const _$_ChatFailureState({required this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'ChatState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatFailureStateCopyWith<_$_ChatFailureState> get copyWith =>
      __$$_ChatFailureStateCopyWithImpl<_$_ChatFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)
        success,
    required TResult Function() empty,
    required TResult Function(Object? error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult? Function()? empty,
    TResult? Function(Object? error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MessageModel> messages, bool hasResponse, bool hasReachedMax)?
        success,
    TResult Function()? empty,
    TResult Function(Object? error)? failure,
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
    required TResult Function(_ChatLoadingState value) loading,
    required TResult Function(_ChatSuccessState value) success,
    required TResult Function(_ChatEmptyState value) empty,
    required TResult Function(_ChatFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoadingState value)? loading,
    TResult? Function(_ChatSuccessState value)? success,
    TResult? Function(_ChatEmptyState value)? empty,
    TResult? Function(_ChatFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoadingState value)? loading,
    TResult Function(_ChatSuccessState value)? success,
    TResult Function(_ChatEmptyState value)? empty,
    TResult Function(_ChatFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ChatFailureState implements ChatState {
  const factory _ChatFailureState({required final Object? error}) =
      _$_ChatFailureState;

  Object? get error;
  @JsonKey(ignore: true)
  _$$_ChatFailureStateCopyWith<_$_ChatFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) fetchMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String message) copyMessage,
    required TResult Function(String message) regenerateResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? fetchMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String message)? copyMessage,
    TResult? Function(String message)? regenerateResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? fetchMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String message)? copyMessage,
    TResult Function(String message)? regenerateResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMessagesEvent value) fetchMessages,
    required TResult Function(_SendMessageEvent value) sendMessage,
    required TResult Function(_CopyMessageEvent value) copyMessage,
    required TResult Function(_RegenerateResponseEvent value)
        regenerateResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMessagesEvent value)? fetchMessages,
    TResult? Function(_SendMessageEvent value)? sendMessage,
    TResult? Function(_CopyMessageEvent value)? copyMessage,
    TResult? Function(_RegenerateResponseEvent value)? regenerateResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMessagesEvent value)? fetchMessages,
    TResult Function(_SendMessageEvent value)? sendMessage,
    TResult Function(_CopyMessageEvent value)? copyMessage,
    TResult Function(_RegenerateResponseEvent value)? regenerateResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchMessagesEventCopyWith<$Res> {
  factory _$$_FetchMessagesEventCopyWith(_$_FetchMessagesEvent value,
          $Res Function(_$_FetchMessagesEvent) then) =
      __$$_FetchMessagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$_FetchMessagesEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_FetchMessagesEvent>
    implements _$$_FetchMessagesEventCopyWith<$Res> {
  __$$_FetchMessagesEventCopyWithImpl(
      _$_FetchMessagesEvent _value, $Res Function(_$_FetchMessagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$_FetchMessagesEvent(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchMessagesEvent implements _FetchMessagesEvent {
  const _$_FetchMessagesEvent({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.fetchMessages(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchMessagesEvent &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchMessagesEventCopyWith<_$_FetchMessagesEvent> get copyWith =>
      __$$_FetchMessagesEventCopyWithImpl<_$_FetchMessagesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) fetchMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String message) copyMessage,
    required TResult Function(String message) regenerateResponse,
  }) {
    return fetchMessages(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? fetchMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String message)? copyMessage,
    TResult? Function(String message)? regenerateResponse,
  }) {
    return fetchMessages?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? fetchMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String message)? copyMessage,
    TResult Function(String message)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMessagesEvent value) fetchMessages,
    required TResult Function(_SendMessageEvent value) sendMessage,
    required TResult Function(_CopyMessageEvent value) copyMessage,
    required TResult Function(_RegenerateResponseEvent value)
        regenerateResponse,
  }) {
    return fetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMessagesEvent value)? fetchMessages,
    TResult? Function(_SendMessageEvent value)? sendMessage,
    TResult? Function(_CopyMessageEvent value)? copyMessage,
    TResult? Function(_RegenerateResponseEvent value)? regenerateResponse,
  }) {
    return fetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMessagesEvent value)? fetchMessages,
    TResult Function(_SendMessageEvent value)? sendMessage,
    TResult Function(_CopyMessageEvent value)? copyMessage,
    TResult Function(_RegenerateResponseEvent value)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(this);
    }
    return orElse();
  }
}

abstract class _FetchMessagesEvent implements ChatEvent {
  const factory _FetchMessagesEvent({required final String messageId}) =
      _$_FetchMessagesEvent;

  String get messageId;
  @JsonKey(ignore: true)
  _$$_FetchMessagesEventCopyWith<_$_FetchMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMessageEventCopyWith<$Res> {
  factory _$$_SendMessageEventCopyWith(
          _$_SendMessageEvent value, $Res Function(_$_SendMessageEvent) then) =
      __$$_SendMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_SendMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_SendMessageEvent>
    implements _$$_SendMessageEventCopyWith<$Res> {
  __$$_SendMessageEventCopyWithImpl(
      _$_SendMessageEvent _value, $Res Function(_$_SendMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SendMessageEvent(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessageEvent implements _SendMessageEvent {
  const _$_SendMessageEvent({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageEventCopyWith<_$_SendMessageEvent> get copyWith =>
      __$$_SendMessageEventCopyWithImpl<_$_SendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) fetchMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String message) copyMessage,
    required TResult Function(String message) regenerateResponse,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? fetchMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String message)? copyMessage,
    TResult? Function(String message)? regenerateResponse,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? fetchMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String message)? copyMessage,
    TResult Function(String message)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMessagesEvent value) fetchMessages,
    required TResult Function(_SendMessageEvent value) sendMessage,
    required TResult Function(_CopyMessageEvent value) copyMessage,
    required TResult Function(_RegenerateResponseEvent value)
        regenerateResponse,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMessagesEvent value)? fetchMessages,
    TResult? Function(_SendMessageEvent value)? sendMessage,
    TResult? Function(_CopyMessageEvent value)? copyMessage,
    TResult? Function(_RegenerateResponseEvent value)? regenerateResponse,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMessagesEvent value)? fetchMessages,
    TResult Function(_SendMessageEvent value)? sendMessage,
    TResult Function(_CopyMessageEvent value)? copyMessage,
    TResult Function(_RegenerateResponseEvent value)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessageEvent implements ChatEvent {
  const factory _SendMessageEvent({required final String message}) =
      _$_SendMessageEvent;

  String get message;
  @JsonKey(ignore: true)
  _$$_SendMessageEventCopyWith<_$_SendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CopyMessageEventCopyWith<$Res> {
  factory _$$_CopyMessageEventCopyWith(
          _$_CopyMessageEvent value, $Res Function(_$_CopyMessageEvent) then) =
      __$$_CopyMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CopyMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_CopyMessageEvent>
    implements _$$_CopyMessageEventCopyWith<$Res> {
  __$$_CopyMessageEventCopyWithImpl(
      _$_CopyMessageEvent _value, $Res Function(_$_CopyMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CopyMessageEvent(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CopyMessageEvent implements _CopyMessageEvent {
  const _$_CopyMessageEvent({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.copyMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyMessageEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CopyMessageEventCopyWith<_$_CopyMessageEvent> get copyWith =>
      __$$_CopyMessageEventCopyWithImpl<_$_CopyMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) fetchMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String message) copyMessage,
    required TResult Function(String message) regenerateResponse,
  }) {
    return copyMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? fetchMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String message)? copyMessage,
    TResult? Function(String message)? regenerateResponse,
  }) {
    return copyMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? fetchMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String message)? copyMessage,
    TResult Function(String message)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMessagesEvent value) fetchMessages,
    required TResult Function(_SendMessageEvent value) sendMessage,
    required TResult Function(_CopyMessageEvent value) copyMessage,
    required TResult Function(_RegenerateResponseEvent value)
        regenerateResponse,
  }) {
    return copyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMessagesEvent value)? fetchMessages,
    TResult? Function(_SendMessageEvent value)? sendMessage,
    TResult? Function(_CopyMessageEvent value)? copyMessage,
    TResult? Function(_RegenerateResponseEvent value)? regenerateResponse,
  }) {
    return copyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMessagesEvent value)? fetchMessages,
    TResult Function(_SendMessageEvent value)? sendMessage,
    TResult Function(_CopyMessageEvent value)? copyMessage,
    TResult Function(_RegenerateResponseEvent value)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(this);
    }
    return orElse();
  }
}

abstract class _CopyMessageEvent implements ChatEvent {
  const factory _CopyMessageEvent({required final String message}) =
      _$_CopyMessageEvent;

  String get message;
  @JsonKey(ignore: true)
  _$$_CopyMessageEventCopyWith<_$_CopyMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegenerateResponseEventCopyWith<$Res> {
  factory _$$_RegenerateResponseEventCopyWith(_$_RegenerateResponseEvent value,
          $Res Function(_$_RegenerateResponseEvent) then) =
      __$$_RegenerateResponseEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RegenerateResponseEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_RegenerateResponseEvent>
    implements _$$_RegenerateResponseEventCopyWith<$Res> {
  __$$_RegenerateResponseEventCopyWithImpl(_$_RegenerateResponseEvent _value,
      $Res Function(_$_RegenerateResponseEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RegenerateResponseEvent(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegenerateResponseEvent implements _RegenerateResponseEvent {
  const _$_RegenerateResponseEvent({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.regenerateResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegenerateResponseEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegenerateResponseEventCopyWith<_$_RegenerateResponseEvent>
      get copyWith =>
          __$$_RegenerateResponseEventCopyWithImpl<_$_RegenerateResponseEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) fetchMessages,
    required TResult Function(String message) sendMessage,
    required TResult Function(String message) copyMessage,
    required TResult Function(String message) regenerateResponse,
  }) {
    return regenerateResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? fetchMessages,
    TResult? Function(String message)? sendMessage,
    TResult? Function(String message)? copyMessage,
    TResult? Function(String message)? regenerateResponse,
  }) {
    return regenerateResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? fetchMessages,
    TResult Function(String message)? sendMessage,
    TResult Function(String message)? copyMessage,
    TResult Function(String message)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (regenerateResponse != null) {
      return regenerateResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMessagesEvent value) fetchMessages,
    required TResult Function(_SendMessageEvent value) sendMessage,
    required TResult Function(_CopyMessageEvent value) copyMessage,
    required TResult Function(_RegenerateResponseEvent value)
        regenerateResponse,
  }) {
    return regenerateResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMessagesEvent value)? fetchMessages,
    TResult? Function(_SendMessageEvent value)? sendMessage,
    TResult? Function(_CopyMessageEvent value)? copyMessage,
    TResult? Function(_RegenerateResponseEvent value)? regenerateResponse,
  }) {
    return regenerateResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMessagesEvent value)? fetchMessages,
    TResult Function(_SendMessageEvent value)? sendMessage,
    TResult Function(_CopyMessageEvent value)? copyMessage,
    TResult Function(_RegenerateResponseEvent value)? regenerateResponse,
    required TResult orElse(),
  }) {
    if (regenerateResponse != null) {
      return regenerateResponse(this);
    }
    return orElse();
  }
}

abstract class _RegenerateResponseEvent implements ChatEvent {
  const factory _RegenerateResponseEvent({required final String message}) =
      _$_RegenerateResponseEvent;

  String get message;
  @JsonKey(ignore: true)
  _$$_RegenerateResponseEventCopyWith<_$_RegenerateResponseEvent>
      get copyWith => throw _privateConstructorUsedError;
}
