import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taskey_project/view/Login/Signup/login.dart';

class Splashthree extends StatefulWidget {
  const Splashthree({super.key});

  @override
  State<Splashthree> createState() => _SplashthreeState();
}

class _SplashthreeState extends State<Splashthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/pop.png',height: 300,),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: Image.asset('assets/circleS3.png',scale: 2,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240, top: 276),
                  child: Image.asset('assets/notf S3.png',scale: 2,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 80),
                  child: Image.asset('assets/group S3.png',scale: 2,),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Management',
                    style: TextStyle(fontSize: 15, color: Color(0xff756EF3)),
                  ),
                  Text(
                    'Manage your',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Text(
                        'Tasks\t',
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff756EF3)),
                      ),
                      Text(
                        'quickly for',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Text(
                    'Results✌',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Image.asset('assets/slider S3.png',scale: 2,),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 16),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: InkWell(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Image.asset('assets/Next1.png')),
            )
          ],
        ),
      ),
    );
  }
}