import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_model.freezed.dart';

part 'chat_completion_model.g.dart';

@freezed
class ChatCompletionModel with _$ChatCompletionModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChatCompletionModel(
    final String? id,
    final String? object,
    final int? created,
    final List<Choices>? choices,
    final Usage? usage,
  ) = _ChatCompletionModel;

  factory ChatCompletionModel.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionModelFromJson(json);
}

@freezed
class Choices with _$Choices {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Choices(
    final int? index,
    final Message? message,
    final String? finishReason,
  ) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}

@freezed
class Message with _$Message {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Message(
    String? role,
    String? content,
  ) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Usage with _$Usage {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Usage(
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
  ) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
