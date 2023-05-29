import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Fil extends StatefulWidget {
  const Fil({Key? key}) : super(key: key);
  static final String id = 'fil';

  @override
  State<Fil> createState() => _FilState();
}

class _FilState extends State<Fil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const FadeAnimation(),
          const SizedBox(height: 30,),
          const Text("Fil surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. (Ey, Muhammad,) Rabbingiz fil egalarini ne qilganini ko'rmadingizmi?",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. (U) ularning makrlarini chalg'itib qo'ymadimi?!",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. Ularning ustiga to'da-to'da qushlarni yubordi.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. (Ular) sopol toshlar bilan ularni otar edi.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. (Shunday qilib) ularni yeb (chaynab) tashlangan somondek qilib tashladi.",style: TextStyle(fontSize: 16),),
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
