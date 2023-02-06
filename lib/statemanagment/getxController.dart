import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  //? make observable
  RxInt count = 0.obs;
  void increment()   {
    // await Future<int>.delayed(const Duration(seconds: 5));
    count++;
    update(['texCount']);
  }

  void cleanUpTask() {
    debugPrint('Clean up task');   
  }

  @override
  void onInit() {
    debugPrint('init called');
    super.onInit();
  }
  @override
  void onClose() {
    debugPrint('onClose called');
    super.onClose();
  }

}
