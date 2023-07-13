import 'package:chat_gpt/src/models/models_model.dart';

abstract class ModelsNetworkDataProvider {
  Future<ModelsModel> getModels();
}
