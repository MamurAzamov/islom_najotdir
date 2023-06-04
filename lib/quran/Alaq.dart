import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/quran_page.dart';

class Alaq extends StatefulWidget {
  const Alaq({Key? key}) : super(key: key);
  static const String id = 'alaq';

  @override
  State<Alaq> createState() => _AlaqState();
}

class _AlaqState extends State<Alaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const SizedBox(height: 30,),
            const Text("Alaq surasi", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            const Text("Mehribon va rahmli Alloh nomi ila (boshlayman).",style: TextStyle(fontSize: 16, color: Colors.red),),
            const SizedBox(height: 5,),
            const Text("1. (Ey, Muhammad, butun borliqni) yaratgan zot bo'lmish Rabbingiz nomi bilan o'qing!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("2. U insonni laxta qondan yaratdi.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("3. O'qing! Rabbingiz esa karamli zotdir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("4. U insonga qalam bilan (yozishni) o'rgatgan zotdir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("5. U insonga bilmagan narsalarini o'rgatdi.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("6. Darhaqiqat, inson haddidan oshar.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("7. (Bunga) sabab o'zini boy - behojat sanashidir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("8. (Ey, inson,) albatta, qaytishing Rabbing huzurigadir.",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("9. (Ey, inson,) ko'rdingmi, to'sayotgan kimsani",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("10. bandani namoz o'qiganda?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("11. Ko'rdingmi - agar u (namoz o'quvchi) o'zi To'g’ri yo'lda bo'lsa,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("12. yoki (o'zgalarni) taqvoga (Allohdan qo'rqishga) buyursa?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("13. Ko'rdingmi, agar u (namozdan) to'suvchi kimsa (haqni) inkor etsa va (u imon keltirishdan) yuz o'girsa,",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("14. albatta, Alloh (uning bu qilmishlarini) ko'rib turishini bilmasmi?!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("15. Yo'q! Qasamki, agar u (bu yo'lidan) qaytmasa, albatta, Biz uning peshona sochidan tutamiz",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("16. o'sha yolg’onchi, adashgan (kimsaning) peshona sochidan (tutib jahannamga oturmiz)!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("17. Bas, u o'zining jamoasini (yordamga) chaqiraversin!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("18. Biz esa azob farishtalarini chaqirajakmiz!",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            const Text("19. Yo'q! (Ey, Muhammad,) Siz unga itoat etmang va (yolg’iz) Allohga sajda (ibodat) qilib, (Unga) yaqin bo'ling!",style: TextStyle(fontSize: 16),),
            const Text("19. (Sajda oyati.)",style: TextStyle(fontSize: 16, color: Colors.red),),
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
