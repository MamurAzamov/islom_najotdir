import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Falaq extends StatefulWidget {
  const Falaq({Key? key}) : super(key: key);
  static const String id = 'falaq';

  @override
  State<Falaq> createState() => _FalaqState();
}

class _FalaqState extends State<Falaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlideInDown(
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Falaq surasi",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Mehribon va rahmli Alloh nomi ila (boshlayman).",
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "1. (Ey, Muhammad,) ayting: Panoh tilab iltijo qilurman tong Parvardigoriga,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2. yaratgan narsalari yovuzligidan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "3. zulmatga cho'mgan tun yovuzligidan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "4. tugunchalarga dam uruvchi ayollar yovuzligidan",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "5. hamda hasadchining hasadi yovuzligidan.",
            style: TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, QuranPage.id);
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_left),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Chiqish",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
