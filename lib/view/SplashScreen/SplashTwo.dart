import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taskey_project/view/SplashScreen/splashThree.dart';

class Splashtwo extends StatefulWidget {
  const Splashtwo({super.key});

  @override
  State<Splashtwo> createState() => _SplashtwoState();
}

class _SplashtwoState extends State<Splashtwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                 Image.asset('assets/pop.png',scale: 2.30,height: 360,),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                      child: Image.asset('assets/circleS2.png',scale: 2,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 210,right: 10),
                  child: Image.asset('assets/profileS2men.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 10),
                  child: Image.asset('assets/profileS2.png',scale: 2,),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Management',
                    style: TextStyle(fontSize: 16, color: Color(0xff756EF3)),
                  ),
                  Text(
                    'Work more',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Text(
                        'Structured\t',
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff756EF3)),
                      ),
                      Text(
                        'and',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Text(
                    'Organized 👌',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Image.asset('assets/sliderS2.png',scale: 2.30,),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: InkWell(
                    onTap: () {
                      Get.to( Splashthree());
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 17),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: InkWell(
                  onTap: () {
                    Get.to(const Splashthree());
                  },
                  child: Image.asset('assets/Next1.png',scale: 2,height: 130,)),
            )
          ],
        ),
      ),
    );
  }
}