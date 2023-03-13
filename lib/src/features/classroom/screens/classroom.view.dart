import 'package:flutter/material.dart';
import 'package:simpon_clone/src/common_widgets/Bottom.nav.component.dart';

class ClassroomView extends StatefulWidget {
  const ClassroomView({super.key});

  @override
  State<ClassroomView> createState() => _ClassroomViewState();
}

class _ClassroomViewState extends State<ClassroomView>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simpon'),
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        'home',
        style: TextStyle(
          fontSize: 50,
        ),
      )),
      bottomNavigationBar: const BottomNavComponent(currentPage:1),
    );
  }
}
