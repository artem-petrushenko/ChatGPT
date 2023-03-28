import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_model.freezed.dart';

part 'models_model.g.dart';

@freezed
class ModelsModel with _$ModelsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ModelsModel(
    final List<Data>? data,
    final String? object,
  ) = _ModelsModel;

  factory ModelsModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Data(
    final String? id,
    final String? object,
    final String? ownedBy,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
