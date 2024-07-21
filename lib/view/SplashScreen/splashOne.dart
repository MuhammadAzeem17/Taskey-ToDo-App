import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskey_project/view/SplashScreen/SplashTwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                
               Padding( padding: const EdgeInsets.only(top: 1),
               child: Image.asset('assets/pop.png',height: 342,width: 421,fit: BoxFit.cover,),),
                Padding(padding: EdgeInsets.only(top: 40,left: 60),
                child: Center(child: Image.asset('assets/profil 1.png',scale: 2.70,)),),
                Padding(padding: EdgeInsets.only(top: 130, right: 100),
                child: Center(child: Image.asset('assets/profil 2.png',scale: 2.50,)),),
                Padding(padding: EdgeInsets.only(top:200 ,left:90),
                child: Center(child: Image.asset('assets/profil 3.png',scale: 2.50,)),)
              ],
            ),
            Stack(
              children: [
                Padding(padding: const EdgeInsets.only(left: 22,top: 33),
                child: Center(child: Image.asset('assets/TS2.png',scale: 2,)),),
                Padding(padding: const EdgeInsets.only(top: 200,right: 210),
                child: Center(child: Image.asset('assets/slider2.png',scale: 2,)),),
                Padding(padding: const EdgeInsets.only(top: 250,left: 13),
                child: TextButton(
                  onPressed: () {
                   
                  },
                  child: Text('Skip'),
                ), ),
                Padding(padding: const EdgeInsets.only(top: 193,left: 250),
                child: InkWell(
                  onTap: () {
                   Get.to(const Splashtwo());
                  },
                     child:  Center(child: Image.asset('assets/Next1.png',scale: 2,height: 200,)),
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}