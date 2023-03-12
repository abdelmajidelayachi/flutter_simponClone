import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simpon_clone/utils/global.colors.dart';
import 'package:simpon_clone/views/splash.view.dart';
 
void main() => runApp(const App());

class App extends StatelessWidget {
const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // debugShowCheckedModeBanner: false,
      home: const SplashView()
    );
  }
}