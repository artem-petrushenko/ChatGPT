import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_model.freezed.dart';

part 'chat_history_model.g.dart';

@freezed
class ChatHistoryModel with _$ChatHistoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChatHistoryModel({
    required String name,
    required String message,
  }) = _ChatHistoryModel;

  factory ChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryModelFromJson(json);
}
