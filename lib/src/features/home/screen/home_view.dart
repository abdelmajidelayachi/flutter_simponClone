import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simpon_clone/src/common_widgets/Bottom.nav.component.dart';
import 'package:simpon_clone/src/features/authentication/controllers/logout_controller.dart';
import 'package:simpon_clone/src/features/home/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final LogoutController logoutController = Get.put(LogoutController());
  final HomeController homeController = Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              logoutController.logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Java 1',
          style: TextStyle(fontSize: 20),
        ),
      ),


      bottomNavigationBar: const BottomNavComponent(currentPage: 0,),
      
    );
  }
}