import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Qadr extends StatefulWidget {
  const Qadr({Key? key}) : super(key: key);
  static const String id = 'qadr';

  @override
  State<Qadr> createState() => _QadrState();
}

class _QadrState extends State<Qadr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const SizedBox(height: 30,),
            const Text("Qadr surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
            const SizedBox(height: 5,),
            const Text("1. Albatta, Biz u (Qur'on)ni Qadr kechasida nozil qildik.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("2. (Ey, Muhammad,) Qadr kechasi nima ekanini Sizga ne ham anglatur?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("3. Qadr kechasi ming oydan yaxshiroqdir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("4. U (kecha)da farishtalar va Ruh (Jabroil) Parvardigorlarining izni bilan (yil davomida qilinadigan) barcha ishlar (rejasi) bilan (osmondan yerga) tusharlar.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("5. U (kecha) to tong otgunicha salomatlikdir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
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
