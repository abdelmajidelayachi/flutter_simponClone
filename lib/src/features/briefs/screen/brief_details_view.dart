import 'package:flutter/material.dart';

import '../../../common_widgets/Bottom.nav.component.dart';
import '../model/brief_model.dart';


class BriefDetailsView extends StatelessWidget {
const BriefDetailsView({ Key? key, required this.brief }) : super(key: key);

  final BriefModel brief;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brief Details'),
        centerTitle: true,
      ),
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const SizedBox(
                        height: 35,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  brief.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Contexte du projet : "+brief.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              const SizedBox(
                        height: 35,
                      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Modalités pédagogiques : "+brief.name,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
        ),
      bottomNavigationBar: const BottomNavComponent(currentPage: 2,),
       
    );
    
  }
}