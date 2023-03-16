import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simpon_clone/src/common_widgets/Bottom.nav.component.dart';
import 'package:simpon_clone/src/features/briefs/screen/brief_details_view.dart';

import '../../authentication/controllers/logout_controller.dart';
import '../controller/brief_controller.dart';

class BriefView extends StatefulWidget {
  const BriefView({Key? key}) : super(key: key);

  @override
  _BriefViewState createState() => _BriefViewState();
}

class _BriefViewState extends State<BriefView>
    with SingleTickerProviderStateMixin {
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
        body: Container(
          child: FutureBuilder(
            future: briefController.readBriefs(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].name),
                      // remove over flow
                      subtitle: Text(
                        snapshot.data[index].description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute( builder: (context) => BriefDetailsView(brief:snapshot.data[index])));
                      },
                    );
                  },
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavComponent(
          currentPage: 2,
        ));
  }
}


