import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/common_widgets/Bottom.nav.component.dart';
import 'package:simpon_clone/src/features/authentication/controllers/logout_controller.dart';
import 'package:simpon_clone/src/features/classroom/controller/classrom_controller.dart';
import 'package:simpon_clone/src/features/classroom/models/user_model.dart';

import '../../../routes/app_pages.dart';

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
    final ClassroomController classroomController = Get.put(ClassroomController());
    final LogoutController logoutController = Get.put(LogoutController());
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classroom'),
       centerTitle: true,
       actions: [
         IconButton(
           onPressed: () {
              logoutController.logout();
           },
           // logout
           icon: const Icon(Icons.logout),
         ),],
      ),
      body: Container(
        child:
        FutureBuilder(
          future: classroomController.readUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(snapshot.data[index].name.substring(0,1),
                    style: const TextStyle(color: Colors.white),
                    ),
                    
                  ),
                  
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].role),
                  // add arrow icon
                  trailing: const Icon(Icons.arrow_forward_ios),
                );

              },
            );
          },
          ),
      ),
      bottomNavigationBar: const BottomNavComponent(currentPage:1),
    );
  }

  
  Widget UserBuilder(UserModel user) => ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.name.substring(0,1))),
      
      title: Text(user.name),
      subtitle: Text(user.email),
    );
  


}



