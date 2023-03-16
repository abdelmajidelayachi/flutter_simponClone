
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../authentication/controllers/logout_controller.dart';
import '../controller/brief_controller.dart';

class BriefView extends StatefulWidget {
  const BriefView({ Key? key }) : super(key: key);

  @override
  _BriefViewState createState() => _BriefViewState();
}

class _BriefViewState extends State<BriefView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final BriefController briefController = Get.put(BriefController());
    final LogoutController logoutController = Get.put(LogoutController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Briefs'),
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
      
    );
  }
}