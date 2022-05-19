import 'package:flutter_full_learn/303/reqrest_resource/model/resourceModel.dart';

class ResourceContext {
  ResourceModel? model;

  void saveModel(ResourceModel? model) {
    this.model = model;
  }
}
