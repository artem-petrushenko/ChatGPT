// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) {
  return _ConversationModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationModel {
  String get conversationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get participants => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationModelCopyWith<ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModelCopyWith<$Res> {
  factory $ConversationModelCopyWith(
          ConversationModel value, $Res Function(ConversationModel) then) =
      _$ConversationModelCopyWithImpl<$Res, ConversationModel>;
  @useResult
  $Res call(
      {String conversationId,
      String name,
      List<dynamic> participants,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ConversationModelCopyWithImpl<$Res, $Val extends ConversationModel>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? name = null,
    Object? participants = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationModelCopyWith<$Res>
    implements $ConversationModelCopyWith<$Res> {
  factory _$$_ConversationModelCopyWith(_$_ConversationModel value,
          $Res Function(_$_ConversationModel) then) =
      __$$_ConversationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String conversationId,
      String name,
      List<dynamic> participants,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_ConversationModelCopyWithImpl<$Res>
    extends _$ConversationModelCopyWithImpl<$Res, _$_ConversationModel>
    implements _$$_ConversationModelCopyWith<$Res> {
  __$$_ConversationModelCopyWithImpl(
      _$_ConversationModel _value, $Res Function(_$_ConversationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? name = null,
    Object? participants = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ConversationModel(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ConversationModel implements _ConversationModel {
  const _$_ConversationModel(
      {required this.conversationId,
      required this.name,
      required final List<dynamic> participants,
      required this.createdAt,
      required this.updatedAt})
      : _participants = participants;

  factory _$_ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationModelFromJson(json);

  @override
  final String conversationId;
  @override
  final String name;
  final List<dynamic> _participants;
  @override
  List<dynamic> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConversationModel(conversationId: $conversationId, name: $name, participants: $participants, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationModel &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, name,
      const DeepCollectionEquality().hash(_participants), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationModelCopyWith<_$_ConversationModel> get copyWith =>
      __$$_ConversationModelCopyWithImpl<_$_ConversationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationModelToJson(
      this,
    );
  }
}

abstract class _ConversationModel implements ConversationModel {
  const factory _ConversationModel(
      {required final String conversationId,
      required final String name,
      required final List<dynamic> participants,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_ConversationModel;

  factory _ConversationModel.fromJson(Map<String, dynamic> json) =
      _$_ConversationModel.fromJson;

  @override
  String get conversationId;
  @override
  String get name;
  @override
  List<dynamic> get participants;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationModelCopyWith<_$_ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
