import 'heavy_model_sub.dart';

class HeavyModelSubTwo extends HeavyModelSub {
  List<HeavyModelSubTwoListItem> items;

  HeavyModelSubTwo() {
    items = [];
  }
}

class HeavyModelSubTwoListItem {
  String uid;
  String name;
  HeavyModelSubTwoListItem(this.uid, this.name);
}
