import 'package:chat_gpt/providers/models_service.dart';

class ModelsRepository {
  final _chatGPTProvider = ModelsService();

  Future<void> getModels() async {
    final models = await _chatGPTProvider.getModels();
    print(models.data?.first.object);
  }
}
