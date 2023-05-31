import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Ixlos extends StatefulWidget {
  const Ixlos({Key? key}) : super(key: key);
  static const String id = 'ixlos';

  @override
  State<Ixlos> createState() => _IxlosState();
}

class _IxlosState extends State<Ixlos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 30,),
          const Text("Ixlos surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. (Ey, Muhammad,) ayting: 'U Alloh yagonadir'.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. Alloh behojat, (lekin) hojatbarordir.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. U tug'magan va tug'ilmagan ham.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. Shuningdek, Unga biror tengqur ham yo'qdir.",style: TextStyle(fontSize: 16),),
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
    );
  }
}
