import 'package:chat_gpt/models/models_model.dart';

abstract class ChatModelsRepository {
  Future<ModelsModel> getModels();
}
