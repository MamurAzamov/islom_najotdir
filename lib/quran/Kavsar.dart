import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Kavsar extends StatefulWidget {
  const Kavsar({Key? key}) : super(key: key);
  static final String id = 'kavsar';

  @override
  State<Kavsar> createState() => _KavsarState();
}

class _KavsarState extends State<Kavsar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Kavsar surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, Muhammad,) albatta, Biz Sizga Kavsarni ato etdik.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Bas, Rabbingiz uchun namoz o'qing va (tuya) so'yib qurbonlik qiling!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. Albatta, g'animingizning o'zi (barcha yaxshiliklardan) mahrumdir.",style: TextStyle(fontSize: 16),),
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