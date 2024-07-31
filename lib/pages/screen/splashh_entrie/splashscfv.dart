import 'package:flutter/material.dart';
import 'package:reproed_fci10/pages/screen/splashh_entrie/signup.dart';
import 'package:reproed_fci10/pages/widget/theme.dart';

import 'login.dart';

class Splashscfv extends StatelessWidget {
  const Splashscfv({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 155, 33, 255),
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                //gambar sebagai gambar tampilan disetiap landing page(Sebagai BG)
                Image.asset(
                  "assets/images/wlp1.png",
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                ),

                //pembuatan container untuk isi konten
                ListView(
                  children: [
                    const SizedBox(
                      height: 325,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 110, 12, 190),
                            Color.fromARGB(255, 93, 34, 255),
                          ], // Gradient colors
                        ),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(45),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 45),
                        child: Column(
                          children: [
                            Text(
                              "ReproEd",
                              textAlign: TextAlign.center,
                              style: boldwhitetext.copyWith(fontSize: 35),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "Eksplorasi kesehatan reproduksi dengan Materi, Test Pemahamn, dan Edukasi. Gunakan Aplikasi ReproEd sekarang untuk pengalaman yang menyenangkan dan memberikan edukasi.",
                              maxLines: 7,
                              textAlign: TextAlign.center,
                              style: mediumWhiteTextStyle.copyWith(fontSize: 15),
                            ),
                            const SizedBox(height: 35),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                    MaterialPageRoute(builder: (context) => const Login())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  elevation: 8,
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  minimumSize: const Size.fromHeight(45)),
                              child: Text(
                                "Masuk",
                                textAlign: TextAlign.center,
                                style: mediumPURPLETextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Apakah kamu sudah memiliki akun ReproEd?",
                                  textAlign: TextAlign.center,
                                  style: regularwhitetext.copyWith(fontSize: 8),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context, 
                                        MaterialPageRoute(builder: (context) => const Signup())
                                    );
                                  },
                                  child: Text(
                                    "Daftar",
                                    textAlign: TextAlign.center,
                                    style: regularwhitetext.copyWith(fontSize: 5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}