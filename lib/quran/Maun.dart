import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Moun extends StatefulWidget {
  const Moun({Key? key}) : super(key: key);
  static final String id = 'moun';

  @override
  State<Moun> createState() => _MounState();
}

class _MounState extends State<Moun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          FadeAnimation(),
          SizedBox(height: 30,),
          Text("Ma'un surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          SizedBox(height: 5,),
          Text("1. Dinni (oxirat jazosini) inkor etadigan kimsani ko'rdingizmi?!",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("2. Bas, u yetimni jerkiydigan",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("3. va miskin (bechora)ga taom berishga targ'ib qilmaydigan kimsadir. Izoh: Bu sifat egalari Makkaning ashaddiy kofirlaridir. Os ibn Voil, Valid ibn Mug'ira kabilardir. Oyat ular sha'niga doir bo'lsa-da, uning hukmi umumiy bo'lib, har bir momin-musulmon bu kabi salbiy xususiyatlardan xoli bo'lishiga harakat qilish zarurdir.",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("4. Bas, shunday namozxonlar holiga voyki,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("5. ular namozlarini 'unutib' qo'yadilar,",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("6. riyokorlik qiladilar",style: TextStyle(fontSize: 16),),
          SizedBox(height: 5,),
          Text("7. va ro'zg'or buyumlarini (kishilardan) man etadilar.",style: TextStyle(fontSize: 16),),
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
