import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavComponent extends StatelessWidget {
  const BottomNavComponent({Key? key, required this.currentPage})
      : super(key: key);
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white)
            ,
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
    );
  }
}
