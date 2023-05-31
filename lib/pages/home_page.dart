import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:islom_najotdir/pages/about.dart';
import 'package:islom_najotdir/pages/qibla_compass.dart';
import 'package:islom_najotdir/pages/quran_page.dart';
import 'package:islom_najotdir/pages/tasbeh_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../service/auth_service.dart';
import '../service/utils_service.dart';
import 'ism_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  Future<void> _shareLink() async {
    try {
      await FlutterShare.share(
          title: 'Mamur Azamov',
          linkUrl: 'https://github.com/MamurAzamov',
          chooserTitle: ''
      );
    } catch (e) {
      print('Share error: $e');
    }
  }

  _dialogLogout() async {
    var result  = await Utils.dialogCommon(
        context,
        "Islom najotdir",
        "Akkountdan chiqishni xohlaysizmi",
        false
    );
    if(result != null && result){
      setState(() {
        isLoading = true;
      });
      AuthService.signOutUser(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0,
        child: Column(
          children: [
            Container(
              color: Colors.teal,
              height: 200,
              width: double.infinity,
              child: const Center(
                child: Image(
                  height: 200,
                  image: AssetImage("assets/images/The-Kaaba.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: ElevatedButton(
                child: const Row(
                  children: [
                    Icon(Icons.home, size: 25,),
                    SizedBox(width: 20,),
                    Text("Asosiy",style: TextStyle(fontSize: 20),),
                  ],
                ), onPressed: () {
                  Navigator.pop(context, HomePage.id);
              },
              )
            ),
            Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                child: ElevatedButton(
                  child: const Row(
                    children: [
                      Icon(Icons.telegram, size: 25,),
                      SizedBox(width: 20,),
                      Text("Telegram bot",style: TextStyle(fontSize: 20),),
                    ],
                  ), onPressed: () {
                  launch("https://Telegram.me/OnlaynTalim_bot");
                },
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                child: ElevatedButton(
                  child: const Row(
                    children: [
                      Icon(Icons.share, size: 25,),
                      SizedBox(width: 20,),
                      Text("Ulashish",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  onPressed: () {
                    _shareLink();
                  },
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                child: ElevatedButton(
                  child: const Row(
                    children: [
                      Icon(Icons.question_mark_rounded, size: 25,),
                      SizedBox(width: 20,),
                      Text("Biz haqimizda",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AboutPage.id);
                },
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
                child: ElevatedButton(
                  child: const Row(
                    children: [
                      Icon(Icons.logout_outlined, size: 25,),
                      SizedBox(width: 20,),
                      Text("Chiqish",style: TextStyle(fontSize: 20),),
                    ],
                  ), onPressed: () {
                    _dialogLogout();
                },
                )
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Islom najotdir",
          style: TextStyle(
            fontFamily: 'arabic',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pushNamed(context, AboutPage.id);
              },
              icon: const Icon(Icons.question_mark))
        ], systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SlideInDown(
        child: ListView(
          children: [
            Container(
              height: 210,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/The-Kaaba.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 20),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, QiblahPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.solidQibla, size: 24, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Qibla kompas",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, QuranPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.solidQuran2, size: 24, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Qur'on suralari",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, TasbehPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.solidTasbih3, size: 24, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Tasbeh",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, Ismlar.id);
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.allah99, size: 26, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Allohning ismlari",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Utils.showToast("Hozircha qo'shilmagan");
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.solidPrayer, size: 24, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Duolar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25,top: 10),
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Utils.showToast("Ushbu funksiya hozircha mavjud emas");
                    },
                    child: const Row(
                      children: [
                        Icon(FlutterIslamicIcons.solidPrayingPerson, size: 24, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          "Namoz vaqtlari",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            isLoading
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : const SizedBox.shrink()

          ],
        ),
      )
    );
  }
}
