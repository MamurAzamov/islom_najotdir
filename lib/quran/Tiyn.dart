import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Tiyn extends StatefulWidget {
  const Tiyn({Key? key}) : super(key: key);
  static const String id = 'tiyn';

  @override
  State<Tiyn> createState() => _TiynState();
}

class _TiynState extends State<Tiyn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 30,),
          const Text("Tiyn surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. Qasamyod eturman anjirga va zaytunga,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. Turi Sinin (tog’i)ga,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. mana shu tinch-osoyishta shahar (Makka)gaki,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. haqiqatan, Biz insonni xushbichim (shaklda) yaratdik.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. So'ngra (qarigan sari), uni asfalasofilinga (qomati xam bo'lishga) qaytardik.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("6. illo, imon keltirgan va yaxshi amallarni qilganlarga bitmas-tuganmas ajr (mukofot) bordir.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("7. Bas, (ey, inson)! Shundan keyin jazo (Kuni)ni inkor etishga seni nima majbur etmoqda?!",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("8. Axir, Alloh (o'sha Kunda) hukm qiluvchilarning (adolatli) hukm chiqaruvchirog’i emasmi?!",style: TextStyle(fontSize: 16),),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context, QuranPage.id);
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_left),
                SizedBox(width: 3,),
                Text(
                  "Chiqish",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
