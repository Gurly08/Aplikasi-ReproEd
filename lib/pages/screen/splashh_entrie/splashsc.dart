import 'package:flutter/material.dart';
import 'package:reproed_fci10/pages/widget/theme.dart';

import 'splashsctw.dart';

class SplashSc extends StatefulWidget {
  const SplashSc({super.key});

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {
  
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Spalshsctw()),
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.blue],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage("assets/images/esgul.png"),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    foregroundImage: AssetImage("assets/images/smp187.jpg"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 225),
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 245),
            Text(
              "V. 1.0.0",
              style: regularwhitetext,
            ),
          ],
        ),
      ),
    );
  }
}