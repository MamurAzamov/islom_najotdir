import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Sharh extends StatefulWidget {
  const Sharh({Key? key}) : super(key: key);
  static const String id = 'sharh';

  @override
  State<Sharh> createState() => _SharhState();
}

class _SharhState extends State<Sharh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const SizedBox(height: 30,),
            const Text("Sharh surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
            const SizedBox(height: 5,),
            const Text("1. (Ey, Muhammad,) ko'ksingizni (ilmu-hikmatga) keng ochib qo'ymadikmi?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("2. Sizdan yukingizni olib qo'ydik,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("3. qaysiki, belingizni ezib turgan edi.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("4. Zikringizni (martabangizni) ham baland qilib qo'ydik.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("5. Bas, albatta, har bir qiyinchilik bilan birga yengillik bordir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("6. Albatta, har bir qiyinchilik bilan birga yengillik bordir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("7. Bas, (ey, Muhammad,) qachonki, (namozdan) foriq bo'lsangiz, (o'rningizdan) turing",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("8. va Rabbingiz sari rag'bat (bilan iltijo) qiling!",style: TextStyle(fontSize: 16),),
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
