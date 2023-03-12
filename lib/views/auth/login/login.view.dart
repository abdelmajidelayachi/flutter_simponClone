import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simpon_clone/utils/global.colors.dart';
import 'package:simpon_clone/views/auth/register/register.view.dart';
import 'package:simpon_clone/widgets/button.global.dart';
import 'package:simpon_clone/widgets/social.login.dart';
import 'package:simpon_clone/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15 ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  height: 40,
                ),
              ),
              const SizedBox(height: 2),
              Center(
                    child: Text(
                      'Simplon',
                      style: TextStyle(
                        color: GlobalColors.mainColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
              Text(
                "Login to Your account",
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormGlobal(
                controller: emailController,
                text: 'Email',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormGlobal(
                controller: passwordController,
                text: 'Password',
                obscure: true,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 30),
              const ButtonGlobal(text: 'Sign In'),
              const SizedBox(height: 80),
              const SocialLogin(text: 'Sign In',),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account ',
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView()));
              } ,
              child: Text(
                'Sign Up',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
