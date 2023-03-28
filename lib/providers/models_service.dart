import 'package:chat_gpt/models/models_model.dart';

import 'package:chat_gpt/providers/api_request_helper.dart';

class ModelsService {
  final _apiRequestHelper = ApiRequestHelper();

  Future<ModelsModel> getModels() async {
    final response = await _apiRequestHelper.get(endpoint: '/models');
    return ModelsModel.fromJson(response);
  }
}
