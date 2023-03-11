import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simpon_clone/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.6,
        alignment: Alignment.center,
        child: Text(
          "- Or $text with -",
          style: TextStyle(
            color: GlobalColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        
      ),
      const SizedBox(
        height: 40,
      ),
      Row(
        children: [
          // google
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  )
          
                ]
              ),
              child: SvgPicture.asset(
                'assets/images/google.svg',
                height: 20,
              ),
            ),
          ),


           // Facebook
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              margin: const EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  )
          
                ]
              ),
              child: SvgPicture.asset(
                'assets/images/facebook.svg',
                height: 20,
              ),
            ),
          ),
           // Twitter
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  )
          
                ]
              ),
              child: SvgPicture.asset(
                'assets/images/twitter.svg',
                height: 20,
              ),
            ),
          )
        ],
      )
    ]);
  }
}
