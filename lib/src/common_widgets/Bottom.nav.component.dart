import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';


class BottomNavComponent extends StatefulWidget {
  const BottomNavComponent({ Key? key, required this.currentPage  }) : super(key: key);

  final int currentPage;
  

  @override
  _BottomNavComponentState createState() => _BottomNavComponentState(currentPage);
}

class _BottomNavComponentState extends State<BottomNavComponent> {
  final int currentPage;
  _BottomNavComponentState(this.currentPage);
 
   void _onItemTapped(int index) {
    print("index: $index");

    
    switch (index) {
      case 0:
        Get.toNamed(Routes.Home);
        break;
      case 1:
        Get.toNamed(Routes.CLASSROOM);
        break;
      case 2:
        Get.toNamed(Routes.BRIEFS);
        break;
      case 3:
        Get.toNamed("/profile");
        break;
    }
  }
      @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chalkboardUser, size: 20),
            label: 'Classroom',
            backgroundColor: Colors.white),

        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.fileLines, size: 20),
            label: 'Briefs',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.white)
      ],

      onTap: _onItemTapped,



    );
  }
}