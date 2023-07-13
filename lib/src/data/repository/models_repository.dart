import 'package:chat_gpt/src/models/models_model.dart';

abstract class ModelsRepository {
  Future<ModelsModel> getModels();
}
