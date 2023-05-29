import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Nos extends StatefulWidget {
  const Nos({Key? key}) : super(key: key);
  static final String id = 'nos';

  @override
  State<Nos> createState() => _NosState();
}

class _NosState extends State<Nos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Nos surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (Ey, Muhammad,) ayting: Panoh tilab iltijo qilurman odamlar Parvardigoriga,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. odamlar Podshohiga,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. odamlar Ilohiga",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. yashirin vasvasachi (shayton) yovuzligidanki,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. (u) odamlarning dillariga vasvasa solur.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6. (O'zi) jinlar va odamlardandir.",style: TextStyle(fontSize: 16),),
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
