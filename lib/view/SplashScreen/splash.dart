import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:taskey_project/view/SplashScreen/splashOne.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 87, 248) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:1),
                  child: Image.asset('assets/image 5.png',height: 342 ,width: 421,
                  fit:BoxFit.cover,),),
                Padding( 
                  padding: EdgeInsets.only(top: 12,left: 12),
                  child: Image.asset('assets/Layer 2.png',),
                )
              ],
            ),
            Stack(
              children: [
                Container(decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                  height: MediaQuery.of(context).size.height,),
                Padding(
                  padding: const EdgeInsets.only(top: 10,),
                  child: Center(child: Image.asset('assets/Slidbar.png',
                  scale: 2.30,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 45),
                  child: Center(child: Image.asset('assets/logo.png',
                  scale: 1,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Center(child: Text('Building Better\n\t\t\tWorkplaces',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Center(child: Text('Create a unique emotional story that\n\t\t\t\t\t\t\t\tdescribe better than words'),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 291),
                  child: Center(child: Image.asset('assets/base.png'),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(const ScreenOne());},
                      child: Image.asset('assets/Started.png',scale: 2,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}