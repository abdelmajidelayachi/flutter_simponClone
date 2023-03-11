import 'package:flutter/material.dart';
import 'package:simpon_clone/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key, required this.text}) : super(key: key);
  final String text;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          print("Login");
      } ,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
