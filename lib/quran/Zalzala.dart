import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Zalzala extends StatefulWidget {
  const Zalzala({Key? key}) : super(key: key);
  static const String id = 'zalzala';

  @override
  State<Zalzala> createState() => _ZalzalaState();
}

class _ZalzalaState extends State<Zalzala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 30,),
          const Text("Zalzala surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 15,),
          const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
          const SizedBox(height: 5,),
          const Text("1. Qachonki, Yer o'zining (eng dahshatli) zilzilasi bilan qimirlaganida,",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("2. Yer (o'z qa'ridagi konlaru murdalardan iborat) 'yuk'larini (yuzaga) chiqarib tashlaganida",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("3. va (qayta tirilishni inkor qiluvchi) inson (dahshatga tushib): 'Unga ne bo'ldi ekan?' - deb qolganida",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("4. ana o'sha kunda Yer o'z xabarlarini so'zlar.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("5. (So'zlashga) Rabbingiz vahiy (ruxsat) qilganini aytur.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("6. O'sha Kuni odamlar, ularga (nomai) a'mollarini ko'rsatilishi uchun to'da-to'da bo'lib chiqib kelurlar.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("7. Bas, kimki dunyoda zarra miqdorida yaxshilik qilgan bo'lsa, (Qiyomat kuni) uni ko'rar.",style: TextStyle(fontSize: 16),),
          const SizedBox(height: 5,),
          const Text("8. Kimki zarra miqdorida yomonlik qilgan bo'lsa, uni ham ko'rar.",style: TextStyle(fontSize: 16),),
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
