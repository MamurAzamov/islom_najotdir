import 'package:flutter/material.dart';
import 'package:islom_najotdir/animation/FadeAnimation.dart';
import 'package:islom_najotdir/pages/home_page.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Fotiha extends StatefulWidget {
  const Fotiha({Key? key}) : super(key: key);
  static final String id = 'fotiha';

  @override
  State<Fotiha> createState() => _FotihaState();
}

class _FotihaState extends State<Fotiha> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const FadeAnimation(),
          const SizedBox(height: 30,),
          const Text("Fotiha surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("1. Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. Hamd olamlar Robbi Allohgakim",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. U mehribon, rahmli.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. Jazo-mukofot kuning egasidir.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. Sengagina ibodat qilamiz va sendangina so'raymiz!",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("6. Bizni shunday to'g'ri yo'lga boshlaginki",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("7. (u) Sen in'om (hidoyat) etganlarning yo'liga, g'azabga uchragan va adashganlarning emas. ",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 10,),
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
