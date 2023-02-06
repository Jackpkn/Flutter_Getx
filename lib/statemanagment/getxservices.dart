// there is some method which is use for initialization
// Get.lazyPut ()=> MyController
//instance will be created when it is used
//? it is similar to "parameter" the difference is that the instance
//is discarded when is not being used
//but when its use is needed again Get Will recreate teh instance
// the memory will be allocate when we call it
// Get.find<MyController>
//?if you want perform some async operations then use Get.putAsync<MyController> async=> await MyController

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyControllerService extends GetxController {
  void increment() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    RxInt counter = (preferences.getInt('counter') ?? 0 + 1) as RxInt;
    await preferences.setInt('counter', counter as int);
  }
}
 