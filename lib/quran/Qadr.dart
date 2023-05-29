import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Qadr extends StatefulWidget {
  const Qadr({Key? key}) : super(key: key);
  static final String id = 'qadr';

  @override
  State<Qadr> createState() => _QadrState();
}

class _QadrState extends State<Qadr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Qadr surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. Albatta, Biz u (Qur'on)ni Qadr kechasida nozil qildik.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. (Ey, Muhammad,) Qadr kechasi nima ekanini Sizga ne ham anglatur?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. Qadr kechasi ming oydan yaxshiroqdir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. U (kecha)da farishtalar va Ruh (Jabroil) Parvardigorlarining izni bilan (yil davomida qilinadigan) barcha ishlar (rejasi) bilan (osmondan yerga) tusharlar.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. U (kecha) to tong otgunicha salomatlikdir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
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
