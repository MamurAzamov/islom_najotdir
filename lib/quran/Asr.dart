import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

import '../animation/FadeAnimation.dart';

class Asr extends StatefulWidget {
  const Asr({Key? key}) : super(key: key);
  static final String id = 'asr';

  @override
  State<Asr> createState() => _AsrState();
}

class _AsrState extends State<Asr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const FadeAnimation(),
          const SizedBox(height: 30,),
          const Text("Asr surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. Asrga qasamki,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. (har bir) inson ziyon (baxtsizlik)dadir!",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. Faqat imon keltirgan va solih amallarni qilgan, bir-birlariga Haq (yo'li)ni tavsiya etgan va bir-birlariga sabrli bo'lishni tavsiya etgan zotlargina (bundan ustasnodirlar).",style: TextStyle(fontSize: 16),),
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
