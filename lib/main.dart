import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.zoom,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const MyApp(),
        ),
        GetPage(
          name: '/Home',
          transition: Transition.leftToRight,
          page: () => Home(),
        ),
        GetPage(name: '/NextScreen/: SomeValue', page: () => Home())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await Get.toNamed('/Home');
                },
                child: const Text('Next screen')),
          ],
        ),
      ),
    );
  }
}
// .offNamed Go to next screen but no option to return to previous screen
//  .offAllNamed Go to home screen and cancel all previous screen /routes
// dynamic url link
// Get.toNamed - 