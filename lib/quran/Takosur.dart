import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Takosur extends StatefulWidget {
  const Takosur({Key? key}) : super(key: key);
  static final String id = 'takosur';

  @override
  State<Takosur> createState() => _TakosurState();
}

class _TakosurState extends State<Takosur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Takosur surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, insonlar,) sizlarni (mol-dunyo) ko'paytirish (Allohga ibodat qilishdan) mashg’ul qildi.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Hatto maqbaralaringiz (ko'pligi bilan faxrlanish)gacha bordingiz.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. Yo'q! Yaqinda (buni oqibatini) bilursizlar.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Yana bir bor yo'qki, yaqinda bilursizlar!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. Yo'q! Agar (dunyoparastlik oqibatini) aniq ilm bilan bilganingizda edi (uni do'st tutmas edingiz).",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6. Qasamki, albatta, sizlar do'zaxni ko'rasizlar!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("7. Yana bir bor qasamki, sizlar uni ayni ishonch bilan ko'rasizlar!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("8.  So'ngra ana o'sha Kunda, albatta, (sizlarga ato etilgan barcha) ne'matlar to'g’risida so'roq qilinursizlar!",style: TextStyle(fontSize: 16),),
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
