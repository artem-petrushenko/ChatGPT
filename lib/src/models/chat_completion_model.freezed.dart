// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCompletionModel _$ChatCompletionModelFromJson(Map<String, dynamic> json) {
  return _ChatCompletionModel.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  List<Choices>? get choices => throw _privateConstructorUsedError;
  Usage? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionModelCopyWith<ChatCompletionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionModelCopyWith<$Res> {
  factory $ChatCompletionModelCopyWith(
          ChatCompletionModel value, $Res Function(ChatCompletionModel) then) =
      _$ChatCompletionModelCopyWithImpl<$Res, ChatCompletionModel>;
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      List<Choices>? choices,
      Usage? usage});

  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatCompletionModelCopyWithImpl<$Res, $Val extends ChatCompletionModel>
    implements $ChatCompletionModelCopyWith<$Res> {
  _$ChatCompletionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? choices = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCompletionModelCopyWith<$Res>
    implements $ChatCompletionModelCopyWith<$Res> {
  factory _$$_ChatCompletionModelCopyWith(_$_ChatCompletionModel value,
          $Res Function(_$_ChatCompletionModel) then) =
      __$$_ChatCompletionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      List<Choices>? choices,
      Usage? usage});

  @override
  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$_ChatCompletionModelCopyWithImpl<$Res>
    extends _$ChatCompletionModelCopyWithImpl<$Res, _$_ChatCompletionModel>
    implements _$$_ChatCompletionModelCopyWith<$Res> {
  __$$_ChatCompletionModelCopyWithImpl(_$_ChatCompletionModel _value,
      $Res Function(_$_ChatCompletionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? choices = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$_ChatCompletionModel(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
      freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ChatCompletionModel implements _ChatCompletionModel {
  const _$_ChatCompletionModel(this.id, this.object, this.created,
      final List<Choices>? choices, this.usage)
      : _choices = choices;

  factory _$_ChatCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionModelFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final int? created;
  final List<Choices>? _choices;
  @override
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Usage? usage;

  @override
  String toString() {
    return 'ChatCompletionModel(id: $id, object: $object, created: $created, choices: $choices, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created,
      const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionModelCopyWith<_$_ChatCompletionModel> get copyWith =>
      __$$_ChatCompletionModelCopyWithImpl<_$_ChatCompletionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionModelToJson(
      this,
    );
  }
}

abstract class _ChatCompletionModel implements ChatCompletionModel {
  const factory _ChatCompletionModel(
      final String? id,
      final String? object,
      final int? created,
      final List<Choices>? choices,
      final Usage? usage) = _$_ChatCompletionModel;

  factory _ChatCompletionModel.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionModel.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  int? get created;
  @override
  List<Choices>? get choices;
  @override
  Usage? get usage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionModelCopyWith<_$_ChatCompletionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  int? get index => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({int? index, Message? message, String? finishReason});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
    Object? finishReason = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChoicesCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$_ChoicesCopyWith(
          _$_Choices value, $Res Function(_$_Choices) then) =
      __$$_ChoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, Message? message, String? finishReason});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ChoicesCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$_Choices>
    implements _$$_ChoicesCopyWith<$Res> {
  __$$_ChoicesCopyWithImpl(_$_Choices _value, $Res Function(_$_Choices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
    Object? finishReason = freezed,
  }) {
    return _then(_$_Choices(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Choices implements _Choices {
  const _$_Choices(this.index, this.message, this.finishReason);

  factory _$_Choices.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesFromJson(json);

  @override
  final int? index;
  @override
  final Message? message;
  @override
  final String? finishReason;

  @override
  String toString() {
    return 'Choices(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Choices &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      __$$_ChoicesCopyWithImpl<_$_Choices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  const factory _Choices(final int? index, final Message? message,
      final String? finishReason) = _$_Choices;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$_Choices.fromJson;

  @override
  int? get index;
  @override
  Message? get message;
  @override
  String? get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get role => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String? role, String? content});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? role, String? content});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_Message(
      freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Message implements _Message {
  const _$_Message(this.role, this.content);

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String? role;
  @override
  final String? content;

  @override
  String toString() {
    return 'Message(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(final String? role, final String? content) =
      _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String? get role;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

Usage _$UsageFromJson(Map<String, dynamic> json) {
  return _Usage.fromJson(json);
}

/// @nodoc
mixin _$Usage {
  int? get promptTokens => throw _privateConstructorUsedError;
  int? get completionTokens => throw _privateConstructorUsedError;
  int? get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageCopyWith<Usage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageCopyWith<$Res> {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) then) =
      _$UsageCopyWithImpl<$Res, Usage>;
  @useResult
  $Res call({int? promptTokens, int? completionTokens, int? totalTokens});
}

/// @nodoc
class _$UsageCopyWithImpl<$Res, $Val extends Usage>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_value.copyWith(
      promptTokens: freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokens: freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokens: freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsageCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$$_UsageCopyWith(_$_Usage value, $Res Function(_$_Usage) then) =
      __$$_UsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? promptTokens, int? completionTokens, int? totalTokens});
}

/// @nodoc
class __$$_UsageCopyWithImpl<$Res> extends _$UsageCopyWithImpl<$Res, _$_Usage>
    implements _$$_UsageCopyWith<$Res> {
  __$$_UsageCopyWithImpl(_$_Usage _value, $Res Function(_$_Usage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_$_Usage(
      freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Usage implements _Usage {
  const _$_Usage(this.promptTokens, this.completionTokens, this.totalTokens);

  factory _$_Usage.fromJson(Map<String, dynamic> json) =>
      _$$_UsageFromJson(json);

  @override
  final int? promptTokens;
  @override
  final int? completionTokens;
  @override
  final int? totalTokens;

  @override
  String toString() {
    return 'Usage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Usage &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      __$$_UsageCopyWithImpl<_$_Usage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsageToJson(
      this,
    );
  }
}

abstract class _Usage implements Usage {
  const factory _Usage(final int? promptTokens, final int? completionTokens,
      final int? totalTokens) = _$_Usage;

  factory _Usage.fromJson(Map<String, dynamic> json) = _$_Usage.fromJson;

  @override
  int? get promptTokens;
  @override
  int? get completionTokens;
  @override
  int? get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$_UsageCopyWith<_$_Usage> get copyWith =>
      throw _privateConstructorUsedError;
}
