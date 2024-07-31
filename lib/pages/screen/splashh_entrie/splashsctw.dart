import 'package:flutter/material.dart';
import 'package:reproed_fci10/pages/screen/splashh_entrie/splashscfr.dart';
import 'package:reproed_fci10/pages/screen/splashh_entrie/splashscfv.dart';
import 'package:reproed_fci10/pages/widget/theme.dart';

class Spalshsctw extends StatelessWidget {
  const Spalshsctw({super.key});

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
                "assets/images/materi.png",
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
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                  MaterialPageRoute(builder: (context) => const Splashscfv(),)
                              );
                            },
                            child: Text(
                              "skip",
                                style: regularwhitetext.copyWith(fontSize: 15),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "PuberRepro",
                              style: boldwhitetext.copyWith(fontSize: 35),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Materi yang diberikan sesuai dengan Kurikulum Merdeka yang sedang di terapkan di beberapa sekolah, seperti di SPMN 187 Jakarta.",
                            maxLines: 5,
                            textAlign: TextAlign.center,
                            style: mediumWhiteTextStyle.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const Alignment(0.85, 0.85),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                         MaterialPageRoute(builder: (context) => const Splashscfr(),)
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor:const Color.fromARGB(255, 239, 146, 255), 
                    foregroundColor: Colors.black,
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}