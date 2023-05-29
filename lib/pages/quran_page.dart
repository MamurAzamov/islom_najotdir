import 'package:flutter/material.dart';
import 'package:islom_najotdir/animation/FadeAnimation.dart';
import 'package:islom_najotdir/quran/Alaq.dart';
import 'package:islom_najotdir/quran/Asr.dart';
import 'package:islom_najotdir/quran/Falaq.dart';
import 'package:islom_najotdir/quran/Fil.dart';
import 'package:islom_najotdir/quran/Humaza.dart';
import 'package:islom_najotdir/quran/Ixlos.dart';
import 'package:islom_najotdir/quran/Kavsar.dart';
import 'package:islom_najotdir/quran/Masad.dart';
import 'package:islom_najotdir/quran/Maun.dart';
import 'package:islom_najotdir/quran/Nasr.dart';
import 'package:islom_najotdir/quran/Nos.dart';
import 'package:islom_najotdir/quran/Odiyat.dart';
import 'package:islom_najotdir/quran/Qadr.dart';
import 'package:islom_najotdir/quran/Qoria.dart';
import 'package:islom_najotdir/quran/Quraysh.dart';
import 'package:islom_najotdir/quran/Takosur.dart';
import 'package:islom_najotdir/quran/Tiyn.dart';
import 'package:islom_najotdir/quran/Zalzala.dart';
import 'package:islom_najotdir/quran/bayyina.dart';
import 'package:islom_najotdir/quran/fotiha.dart';
import 'package:islom_najotdir/quran/sharh.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);
  static final String id = 'quran_page';

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Qur'oni karim",style: TextStyle(
          fontSize: 22, fontFamily: 'arabic'
        ),),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15,),
          
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Fotiha.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fotiha", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 7 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الفاتحة", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Sharh.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sharh", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 8 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الشرح", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Tiyn.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tiyn", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 8 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("التين", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Alaq.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alaq", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 19 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("العلق", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Qadr.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qadr", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 5 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("القدر", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Bayyina.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bayyina", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("madiniy, 8 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("البينة", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Zalzala.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zalzala", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("madiniy, 8 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الزلزلة", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Odiyat.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Odiyat", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 11 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("العاديات", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Qoria.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qori'a", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 11 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("القارعة", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Takosur.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Takosur", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 8 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("التكاثر", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Asr.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Asr", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 3 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("العصر", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Humaza.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Humaza", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 9 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الهمزة", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Fil.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fil", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 5 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الفيل", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Quraysh.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quraysh", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 4 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("قريش", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Moun.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mo'un", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 7 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الماعون", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Kavsar.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kavsar", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 3 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الكوثر", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Nasr.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nasr", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("madiniy, 3 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("النصر", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Masad.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Masad", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 5 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("المسد", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Ixlos.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ixlos", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 4 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الإخلاص", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Falaq.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Falaq", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 5 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الفلق", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Nos.id);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nos", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      SizedBox(height: 5,),
                      Text("makkiy, 6 oyatdan iborat", style: TextStyle(
                          fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  Text("الناس", style: TextStyle(
                      fontSize: 18, color: Colors.black),),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15,),
        ],
      )
    );
  }
}
