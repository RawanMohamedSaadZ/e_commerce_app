import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fearures/splash/presentation/splashview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      // theme: ThemeData(fontFamily: 'PlaywriteAUTAS'),
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

