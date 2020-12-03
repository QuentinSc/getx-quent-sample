import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page2.controller.dart';

class Page2View extends GetView<Page2Controller> {
  const Page2View({Key key}) : super(key: key);

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
                          child: Material(
                            color: Colors.amber,
                            child: ListTile(
                              title: Text(
                                  controller.subItems1.elementAt(index).name),
                              subtitle: Text(
                                  controller.subItems1.elementAt(index).uid),
                            ),
                          ),
                        ),
                      ),
                      itemCount: controller.subItems1.length,
                    ))).sliverBox,
            Container(
                height: 120,
                child: Obx(() => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Material(
                            color: Colors.blue,
                            child: ListTile(
                              title: Text(
                                  controller.subItems2.elementAt(index).name),
                              subtitle: Text(
                                  controller.subItems2.elementAt(index).uid),
                            ),
                          ),
                        ),
                      ),
                      itemCount: controller.subItems2.length,
                    ))).sliverBox,
          ],
        ),
      ),
    );
  }
}
