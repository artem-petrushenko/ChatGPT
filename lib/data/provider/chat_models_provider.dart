import 'package:chat_gpt/models/models_model.dart';

abstract class ChatModelsProvider {
  Future<ModelsModel> getModels();
}
