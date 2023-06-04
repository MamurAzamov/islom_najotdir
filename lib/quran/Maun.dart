import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Moun extends StatefulWidget {
  const Moun({Key? key}) : super(key: key);
  static const String id = 'moun';

  @override
  State<Moun> createState() => _MounState();
}

class _MounState extends State<Moun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const SizedBox(height: 30,),
            const Text("Ma'un surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
            const SizedBox(height: 5,),
            const Text("1. Dinni (oxirat jazosini) inkor etadigan kimsani ko'rdingizmi?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("2. Bas, u yetimni jerkiydigan",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("3. va miskin (bechora)ga taom berishga targ'ib qilmaydigan kimsadir. Izoh: Bu sifat egalari Makkaning ashaddiy kofirlaridir. Os ibn Voil, Valid ibn Mug'ira kabilardir. Oyat ular sha'niga doir bo'lsa-da, uning hukmi umumiy bo'lib, har bir momin-musulmon bu kabi salbiy xususiyatlardan xoli bo'lishiga harakat qilish zarurdir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("4. Bas, shunday namozxonlar holiga voyki,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("5. ular namozlarini 'unutib' qo'yadilar,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("6. riyokorlik qiladilar",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("7. va ro'zg'or buyumlarini (kishilardan) man etadilar.",style: TextStyle(fontSize: 16),),
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
