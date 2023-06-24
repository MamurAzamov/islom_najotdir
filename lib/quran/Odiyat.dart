import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Odiyat extends StatefulWidget {
  const Odiyat({Key? key}) : super(key: key);
  static const String id = 'odiyat';

  @override
  State<Odiyat> createState() => _OdiyatState();
}

class _OdiyatState extends State<Odiyat> {
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
            "Odiyat surasi",
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
            "1. Qasamyod etaman pishqirib chopadigan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2. (chopganda tuyoqlaridan) chaqmoq chaqnatadigan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "3. tong paytida (yov sari) bostirib boradigan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "4. bas, o'shanda (ortida) chang qoldiradigan,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "5. shu (chang) bilan (dushman) jamoasining o'rtasiga kirib boradigan (ot)largaki,",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "6. haqiqatan, (kofir) inson Parvardigori (ato etgan ne'matlar)ga noshukrlik qiluvchidir!",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "7. Yana u bunga (noshukrligiga) guvohdir.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "8. Yana u mol-dunyo muhabbatiga juda qattiq (beriluvchi)dir.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "9. Axir, u bilmasmiki, (Qiyomat qoyim bo'lib), qabrlarning ichidagi narsalar chiqarilganida",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "10. va dillardagi sirlar oshkor qilinganida -",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "11. ana o'sha Kunda, albatta, Parvardigorlari ulardan (qilib o'tgan ishlaridan) xabardor-ku!",
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
