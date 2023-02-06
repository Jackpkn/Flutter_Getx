import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/statemanagment/getxController.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // this is object of my controller
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              width: 120,
              height: 120,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Text(
                  'jack and pawan',
                ),
              ),
            ),
            GetBuilder<MyController>(
              id: 'txtCount',
              // initState: (data) => MyController().increment(),
              // dispose: (_)=>MyController().cleanUpTask(),
              builder: ((controller) {
                return Text('jack ${controller.count}');
              }),
            ),
            GetBuilder<MyController>(builder: (controller) {
              return Text('increase ${controller.count}');
            }),
            TextButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text('Increase the value '),
            ),
          ],
        ),
      ),
    );
  }
}
