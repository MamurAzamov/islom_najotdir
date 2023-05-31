import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Nos extends StatefulWidget {
  const Nos({Key? key}) : super(key: key);
  static const String id = 'nos';

  @override
  State<Nos> createState() => _NosState();
}

class _NosState extends State<Nos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 30,),
          const Text("Nos surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. (Ey, Muhammad,) ayting: Panoh tilab iltijo qilurman odamlar Parvardigoriga,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. odamlar Podshohiga,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. odamlar Ilohiga",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. yashirin vasvasachi (shayton) yovuzligidanki,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. (u) odamlarning dillariga vasvasa solur.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("6. (O'zi) jinlar va odamlardandir.",style: TextStyle(fontSize: 16),),
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
