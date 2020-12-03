import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxquentsample/models/heavy_model.dart';
import 'package:getxquentsample/models/heavy_model_sub/heavy_model_sub_one.dart';
import 'package:getxquentsample/models/heavy_model_sub/heavy_model_sub_two.dart';
import 'package:getxquentsample/non_reactive_navigation/Page2.controller.dart';
import 'package:getxquentsample/non_reactive_navigation/Page2.view.dart';

class Page1Controller extends GetxController {
  Rx<HeavyModel> heavyModel = HeavyModel().obs;
  @override
  void onInit() {
    heavyModel.value = _fakeRepo();

    super.onInit();
  }

  HeavyModel _fakeRepo() {
    HeavyModel _fetchModel = HeavyModel();
    _fetchModel.documentId = UniqueKey().toString();
    _fetchModel.createdAt = DateTime.now();

    HeavyModelSubOne subOne = HeavyModelSubOne();
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "3"));
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "4"));
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "2"));
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "6"));
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "5"));
    subOne.items.add(HeavyModelSubOneListItem(UniqueKey().toString(), "1"));

    _fetchModel.subOne = subOne;

    HeavyModelSubTwo subTwo = HeavyModelSubTwo();
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "1"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "8"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "7"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "5"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "2"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "6"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "4"));
    subTwo.items.add(HeavyModelSubTwoListItem(UniqueKey().toString(), "3"));

    _fetchModel.subTwo = subTwo;

    return _fetchModel;
  }

  void navigateToPage2() {
    Get.to(Page2View(),
        arguments: {'heavyModel': HeavyModel.from(heavyModel.value)});
  }
}
