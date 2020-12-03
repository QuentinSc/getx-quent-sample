import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('Non reactive navigation'),
            onTap: () => Get.toNamed('non-reactive-navigation'),
          )
        ],
      ),
    );
  }
}
