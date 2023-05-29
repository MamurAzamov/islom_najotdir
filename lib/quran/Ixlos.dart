import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Ixlos extends StatefulWidget {
  const Ixlos({Key? key}) : super(key: key);
  static final String id = 'ixlos';

  @override
  State<Ixlos> createState() => _IxlosState();
}

class _IxlosState extends State<Ixlos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Ixlos surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, Muhammad,) ayting: 'U Alloh yagonadir'.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Alloh behojat, (lekin) hojatbarordir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. U tug'magan va tug'ilmagan ham.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Shuningdek, Unga biror tengqur ham yo'qdir.",style: TextStyle(fontSize: 16),),
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
