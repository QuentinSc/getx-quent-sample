import 'package:get/get.dart';
import 'package:getxquentsample/models/heavy_model.dart';
import 'package:getxquentsample/models/heavy_model_sub/heavy_model_sub_one.dart';
import 'package:getxquentsample/models/heavy_model_sub/heavy_model_sub_two.dart';

class Page2Controller extends GetxController {
  HeavyModel _heavyModel;
  RxList<HeavyModelSubOneListItem> subItems1 =
      List<HeavyModelSubOneListItem>().obs;
  RxList<HeavyModelSubTwoListItem> subItems2 =
      List<HeavyModelSubTwoListItem>().obs;

  @override
  void onInit() {
    _heavyModel = Get.arguments['heavyModel'];
    subItems1.addAll(_heavyModel.subOne.items);
    subItems1.sort((a, b) => a.name.compareTo(b.name));
    subItems2.addAll(_heavyModel.subTwo.items);
    subItems2.sort((a, b) => a.name.compareTo(b.name));

    // TODO: implement onInit
    super.onInit();
  }
}
