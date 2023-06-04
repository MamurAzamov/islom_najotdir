import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Quraysh extends StatefulWidget {
  const Quraysh({Key? key}) : super(key: key);
  static const String id ='quraysh';

  @override
  State<Quraysh> createState() => _QurayshState();
}

class _QurayshState extends State<Quraysh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const SizedBox(height: 30,),
            const Text("Quraysh surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
            const SizedBox(height: 5,),
            const Text("1. Quraysh (aholisi)ga qulay qilib qo'ygani uchun,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("2. ya'ni ularga qishda (Yamanga) va yozda (Shomga) safar qilishni qulay qilib qo'ygani uchun",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("3. mana shu Uy(Ka'ba)ning Parvardigoriga ibodat qilsinlar!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("4. Zero, (U) ularni ochlikdan (qutqarib) taomlantirdi va xavf (va xatar)dan xotirjam qildi.",style: TextStyle(fontSize: 16),),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context, QuranPage.id);
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.keyboard_arrow_left),
                  SizedBox(width: 3,),
                  Text(
                    "Chiqish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
