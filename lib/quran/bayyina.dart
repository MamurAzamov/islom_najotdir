import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Bayyina extends StatefulWidget {
  const Bayyina({Key? key}) : super(key: key);
  static const String id = 'bayyina';

  @override
  State<Bayyina> createState() => _BayyinaState();
}

class _BayyinaState extends State<Bayyina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlideInDown(
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Bayyina surasi",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Mehribon va rahmli Alloh nomi ila (boshlayman).",
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "1. Ahli kitoblar va mushriklardan iborat kofir kimsalar, to ularga Hujjat kelgunicha, (kufrdan) ajraluvchi bo'lmadilar.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2. (U Hujjat) Alloh (tomoni)dan (yuborilgan) payg’ambar (Muhammad, ularga) pokiza sahifalarni (Qur'onni) tilovat qilur.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "3. U (sahifa)larda qimmatli yozuvlar (ahkomlar) mavjuddir.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "4. Ahli kitoblar faqat ularga Hujjat (payg’ambar) kelganidan keyingina bo'linib ketdilar.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "5.Holbuki, ular faqat yagona Allohga, Uning uchun dinni (shirkdan) xolis qilgan, To'g’ri yo'ldan oqmagan hollarida ibodat qilishga va namozni mukammal ado etishga hamda zakot berishga buyurilgan edilar. Mana shu To'g’ri (haqqoniy) dindir.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "6. Albatta, ahli kitob va mushriklardan iborat kofir kimsalar jahannam o'tida bo'lib, o'sha joyda mangu qolurlar. Ana o'shalar xaloyiqning eng yomonidirlar.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "7. Albatta, imon keltirgan va solih amallarni qilgan zotlar - aynan o'shalar xaloyiqning eng yaxshisidirlar.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "8. Parvardigorlari huzuridagi ularning mukofotlari ostidan anhorlar oqib turadigan mangu jannatlardir. Ular o'sha joyda abadul-abad qoluvchidirlar. Alloh ulardan rozi bo'lur, ular (Allohdan) rozi bo'lurlar. Bu (mukofot) Parvardigoridan qo'rqqan kishi uchundir.",
            style: TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, QuranPage.id);
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_left),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Chiqish",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
