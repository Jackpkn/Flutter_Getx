import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.green,
            width: 120,
            height: 120,
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Text('jack and pawan')),
          )
        ]),
      ),
    );
  }
}
