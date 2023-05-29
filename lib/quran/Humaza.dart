import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Humaza extends StatefulWidget {
  const Humaza({Key? key}) : super(key: key);
  static final String id = 'humaza';

  @override
  State<Humaza> createState() => _HumazaState();
}

class _HumazaState extends State<Humaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Humaza surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Kishilar ortidan) g'iybat qiluvchi, (oldida) masxara qiluvchi har kimsaning holiga voy!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Qaysiki, u mol-dunyoni yig'ib, uni sanagani-sanagan",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. va moli (boyligi) uni abadiy qoldiradi deb o'ylab yurgan kimsadir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Yo'q! Qasamki, albatta, u Hutamaga tashlanur!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. (Ey, inson,) Hutama nima ekanligini senga ne ham anglatur?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6.(U) yoqib qo'yilgan Allohning bir olovidirki,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("7. (u badanlarni teshib o'tib) yuraklarga qadar yetur.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("8. Albatta, u (olov) ularni qamrab oluvchidir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("9. (O'zlari) uzun ustunlarda (zanjirband) bo'lurlar.",style: TextStyle(fontSize: 16),),
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
