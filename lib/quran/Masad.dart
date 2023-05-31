import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Masad extends StatefulWidget {
  const Masad({Key? key}) : super(key: key);
  static const String id = 'masad';

  @override
  State<Masad> createState() => _MasadState();
}

class _MasadState extends State<Masad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 30,),
          const Text("Masad (Tabbat) surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. Abu Lahabning qo'llari qurisin (halok bo'lsin)! Halok bo'ldi ham.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. Mol-mulki va kasb bilan topgan narsalari unga asqotmadi.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. Yaqinda (u) olovda toblanajak.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. Shuningdek, o'tin tashuvchi xotini ham.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. Bo'ynida puxta eshilgan arqoni ham bo'lur.",style: TextStyle(fontSize: 16),),
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
