// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatHistoryModel _$ChatHistoryModelFromJson(Map<String, dynamic> json) {
  return _ChatHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryModel {
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatHistoryModelCopyWith<ChatHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryModelCopyWith<$Res> {
  factory $ChatHistoryModelCopyWith(
          ChatHistoryModel value, $Res Function(ChatHistoryModel) then) =
      _$ChatHistoryModelCopyWithImpl<$Res, ChatHistoryModel>;
  @useResult
  $Res call({String name, String message});
}

/// @nodoc
class _$ChatHistoryModelCopyWithImpl<$Res, $Val extends ChatHistoryModel>
    implements $ChatHistoryModelCopyWith<$Res> {
  _$ChatHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatHistoryModelCopyWith<$Res>
    implements $ChatHistoryModelCopyWith<$Res> {
  factory _$$_ChatHistoryModelCopyWith(
          _$_ChatHistoryModel value, $Res Function(_$_ChatHistoryModel) then) =
      __$$_ChatHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String message});
}

/// @nodoc
class __$$_ChatHistoryModelCopyWithImpl<$Res>
    extends _$ChatHistoryModelCopyWithImpl<$Res, _$_ChatHistoryModel>
    implements _$$_ChatHistoryModelCopyWith<$Res> {
  __$$_ChatHistoryModelCopyWithImpl(
      _$_ChatHistoryModel _value, $Res Function(_$_ChatHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_$_ChatHistoryModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ChatHistoryModel implements _ChatHistoryModel {
  const _$_ChatHistoryModel({required this.name, required this.message});

  factory _$_ChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatHistoryModelFromJson(json);

  @override
  final String name;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatHistoryModel(name: $name, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatHistoryModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatHistoryModelCopyWith<_$_ChatHistoryModel> get copyWith =>
      __$$_ChatHistoryModelCopyWithImpl<_$_ChatHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatHistoryModelToJson(
      this,
    );
  }
}

abstract class _ChatHistoryModel implements ChatHistoryModel {
  const factory _ChatHistoryModel(
      {required final String name,
      required final String message}) = _$_ChatHistoryModel;

  factory _ChatHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_ChatHistoryModel.fromJson;

  @override
  String get name;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ChatHistoryModelCopyWith<_$_ChatHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
