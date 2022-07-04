import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/src/pages/login/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Using GetMaterialApp from GetX
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery Udemy',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
      ],
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          onBackground: Colors.grey,
          background: Colors.grey,
          primary: Colors.amber,
          onPrimary: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
          onSecondary: Colors.grey,
          secondary: Colors.grey,
        ),
      ),
      navigatorKey: Get.key,
    );
  }
}
