
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskey_project/ViewModel/Login_Controller.dart';
import 'package:taskey_project/view/Login/Signup/signup.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginscreenController loginController =
      Get.put(LoginscreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),iconSize: 17,),
                const Padding(
                  padding: EdgeInsets.only(top: 2,left: 100),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 88, left: 60),
                  child: Image.asset('assets/3pop.png',scale: 2,),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 10),
              child: Text(
                'Please Inter your email address \n and password for Login',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: TextFormField(
                // controller: controller.emailController.value,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                      focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                      focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.lock_open_outlined),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220, top: 10),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 58, 162, 247)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 10),
              child: InkWell(
                  onTap: () {
                  //  Get.to(Bottomnavi());
                  },
                  child: Image.asset('assets/Signin  Button.png')),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 160),
              child: Text(
                'SignIn with',
                style: TextStyle(fontSize: 2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2,left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Apple Google.png',scale: 2.50,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not Registrar Yet? ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignupScreen());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff756EF3),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}