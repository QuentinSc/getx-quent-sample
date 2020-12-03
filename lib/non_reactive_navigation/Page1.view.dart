import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page1.controller.dart';

class Page1View extends GetView<Page1Controller> {
  const Page1View({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            Container(
                height: 120,
                child: Obx(() => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ListTile(
                            tileColor: Colors.amber,
                            title: Text(controller.heavyModel.value.subOne.items
                                .elementAt(index)
                                .name),
                            subtitle: Text(controller
                                .heavyModel.value.subOne.items
                                .elementAt(index)
                                .uid),
                          ),
                        ),
                      ),
                      itemCount:
                          controller.heavyModel.value.subOne.items.length,
                    ))).sliverBox,
            Container(
                height: 120,
                child: Obx(() => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ListTile(
                            tileColor: Colors.blue,
                            title: Text(controller.heavyModel.value.subTwo.items
                                .elementAt(index)
                                .name),
                            subtitle: Text(controller
                                .heavyModel.value.subTwo.items
                                .elementAt(index)
                                .uid),
                          ),
                        ),
                      ),
                      itemCount:
                          controller.heavyModel.value.subTwo.items.length,
                    ))).sliverBox,
            ListTile(
              title: Text('Go to page 2'),
              onTap: controller.navigateToPage2,
            ).sliverBox
          ],
        ),
      ),
    );
  }
}
