import 'package:chat_gpt/models/models_model.dart';
import 'package:chat_gpt/providers/models_service.dart';

class ModelsRepository {
  final _chatGPTProvider = ModelsService();

  Future<ModelsModel> getModels() async {
    final models = await _chatGPTProvider.getModels();
    return models;
  }
}
