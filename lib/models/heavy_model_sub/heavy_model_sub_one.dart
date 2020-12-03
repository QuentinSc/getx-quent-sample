import 'heavy_model_sub.dart';

class HeavyModelSubOne extends HeavyModelSub {
  List<HeavyModelSubOneListItem> items;

  HeavyModelSubOne() {
    items = [];
  }
}

class HeavyModelSubOneListItem {
  String uid;
  String name;

  HeavyModelSubOneListItem(this.uid, this.name);
}
