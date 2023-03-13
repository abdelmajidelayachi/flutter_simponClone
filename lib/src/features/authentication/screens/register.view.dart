import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/controllers/register_controller.dart';
import 'package:simpon_clone/src/features/authentication/screens/login.view.dart';
import 'package:simpon_clone/src/common_widgets/text.form.global.dart';
import 'package:simpon_clone/src/common_widgets/button.global.dart';
import 'package:simpon_clone/src/common_widgets/social.login.dart';

import '../../../constants/global.colors.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final _formKey = GlobalKey<FormState>();

    void onRegister() {
      if (_formKey.currentState!.validate() &&
          confirmPasswordController.text == passwordController.text) {
        controller.registerUser(
            nameController.text, emailController.text, passwordController.text);
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 15),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/logo/logo.svg',
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
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Create Your account",
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
                      controller: nameController,
                      text: 'Full name',
                      obscure: false,
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
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
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormGlobal(
                      controller: confirmPasswordController,
                      text: 'Confirm Password',
                      obscure: true,
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(height: 20),
                    ButtonGlobal(
                      text: 'Register',
                      press: () {
                        onRegister();
                      },
                    ),
                    const SizedBox(height: 40),
                    const SocialLogin(text: 'Sign Up'),
                  ]),
            ),
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
              'I already have an account ',
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginView()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
