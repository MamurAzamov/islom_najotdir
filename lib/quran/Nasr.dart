import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Nasr extends StatefulWidget {
  const Nasr({Key? key}) : super(key: key);
  static final String id = 'nasr';

  @override
  State<Nasr> createState() => _NasrState();
}

class _NasrState extends State<Nasr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Nasr surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, Muhammad,) qachonki, Allohning yordami va g'alaba kelganda",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. va odamlar to'p-to'p bo'lishib, Allohning dini (Islom)ga kirayotganlarini ko'rganingizda,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. darhol, Rabbingizga hamd bilan tasbeh ayting va Undan maqfirat so'rang! Zero, U tavbalarni qabul qiluvchi zotdir.",style: TextStyle(fontSize: 16),),
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
