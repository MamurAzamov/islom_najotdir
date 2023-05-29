import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Masad extends StatefulWidget {
  const Masad({Key? key}) : super(key: key);
  static final String id = 'masad';

  @override
  State<Masad> createState() => _MasadState();
}

class _MasadState extends State<Masad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Masad (Tabbat) surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. Abu Lahabning qo'llari qurisin (halok bo'lsin)! Halok bo'ldi ham.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Mol-mulki va kasb bilan topgan narsalari unga asqotmadi.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. Yaqinda (u) olovda toblanajak.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Shuningdek, o'tin tashuvchi xotini ham.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. Bo'ynida puxta eshilgan arqoni ham bo'lur.",style: TextStyle(fontSize: 16),),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context, QuranPage.id);
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_left),
                SizedBox(width: 3,),
                Text("Chiqish",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
