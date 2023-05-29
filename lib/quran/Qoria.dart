import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Qoria extends StatefulWidget {
  const Qoria({Key? key}) : super(key: key);
  static final String id = 'qoria';

  @override
  State<Qoria> createState() => _QoriaState();
}

class _QoriaState extends State<Qoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Qor'ia surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. (U) zarba beruvchi (qiyomat)dir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Zarba beruvchi nedur?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. (Ey, inson,) zarba beruvchi nima ekanini senga ne ham anglatur?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. U Kuni odamlar to'zitib yuborilgan parvonalar kabi bo'lurlar.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. Tog’lar esa titilgan yung kabi (havoda uchib yuradigan) bo'lur.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6. Bas, endi (o'sha kuni) kimning tortilgan (yaxshi amallari) og’ir kelsa,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("7. ana o'sha qoniqarli maishatda bo'lur.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("8. Ammo, kimning tortilgan (yaxshi amallari) yengil kelsa,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("9. uning joyi 'jarlik'dir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("10. Uning nima ekanini Sizga ne ham anglatur?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("11. (U) (do'zaxdagi) lovullab yonuvchi olovdir.",style: TextStyle(fontSize: 16),),
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
