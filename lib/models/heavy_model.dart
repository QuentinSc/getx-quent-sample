import 'heavy_model_sub/heavy_model_sub_two.dart';

import 'heavy_model_sub/heavy_model_sub_one.dart';

class HeavyModel {
  String documentId;
  DateTime createdAt;
  HeavyModelSubOne subOne;
  HeavyModelSubTwo subTwo;

  HeavyModel();

  HeavyModel.from(HeavyModel model) {
    documentId = model.documentId;
    createdAt = model.createdAt;
    subOne = model.subOne;
    subTwo = model.subTwo;
  }
}
