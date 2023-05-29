import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Sharh extends StatefulWidget {
  const Sharh({Key? key}) : super(key: key);
  static final String id = 'sharh';

  @override
  State<Sharh> createState() => _SharhState();
}

class _SharhState extends State<Sharh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Sharh surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, Muhammad,) ko'ksingizni (ilmu-hikmatga) keng ochib qo'ymadikmi?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Sizdan yukingizni olib qo'ydik,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. qaysiki, belingizni ezib turgan edi.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Zikringizni (martabangizni) ham baland qilib qo'ydik.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. Bas, albatta, har bir qiyinchilik bilan birga yengillik bordir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6. Albatta, har bir qiyinchilik bilan birga yengillik bordir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("7. Bas, (ey, Muhammad,) qachonki, (namozdan) foriq bo'lsangiz, (o'rningizdan) turing",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("8. va Rabbingiz sari rag'bat (bilan iltijo) qiling!",style: TextStyle(fontSize: 16),),
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
