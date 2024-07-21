
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskey_project/ViewModel/SignUp_Controllrer.dart';
import 'package:taskey_project/view/Login/Signup/login.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignupscreenController signupController =
      Get.put(SignupscreenController());

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
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 88, left: 50),
                  child: Image.asset('assets/3pop.png',scale: 2,),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 10),
              child: Text(
                'Please Inter your Informatioin and\n create your account',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80)),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    hintText: 'Enter Your Name',
                    prefixIcon: const Icon(Icons.person_2_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    hintText: 'Enter Your Email',
                    prefixIcon: const Icon(Icons.email_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(Icons.lock_open_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                  onTap: () {
                   // Get.to(Bottomnavi());
                  },
                  child: Image.asset('assets/sign Up.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Apple Google.png',scale: 2.50,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xff756EF3), fontWeight: FontWeight.w600),
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