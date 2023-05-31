import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/dua_page.dart';
import 'package:islom_najotdir/pages/qibla_compass.dart';
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
import 'package:islom_najotdir/pages/about.dart';
import 'package:islom_najotdir/quran/bayyina.dart';
import 'package:islom_najotdir/quran/fotiha.dart';
import 'package:islom_najotdir/pages/home_page.dart';
import 'package:islom_najotdir/pages/ism_page.dart';
import 'package:islom_najotdir/pages/quran_page.dart';
import 'package:islom_najotdir/pages/share.dart';
import 'package:islom_najotdir/quran/sharh.dart';
import 'package:islom_najotdir/pages/signin_page.dart';
import 'package:islom_najotdir/pages/signup_page.dart';
import 'package:islom_najotdir/pages/splash_page.dart';
import 'package:islom_najotdir/pages/tasbeh_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islom najot',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const SplashPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        QuranPage.id: (context) => QuranPage(),
        TasbehPage.id: (context) => TasbehPage(),
        Fotiha.id: (context) => Fotiha(),
        Sharh.id: (context) => Sharh(),
        Tiyn.id: (context) => Tiyn(),
        Alaq.id: (context) => Alaq(),
        Qadr.id: (context) => Qadr(),
        Bayyina.id: (context) => Bayyina(),
        Zalzala.id: (context) => Zalzala(),
        Odiyat.id: (context) => Odiyat(),
        Qoria.id: (context) => Qoria(),
        Masad.id: (context) => Masad(),
        Ixlos.id: (context) => Ixlos(),
        Kavsar.id: (context) => Kavsar(),
        Falaq.id: (context) => Falaq(),
        Fil.id: (context) => Fil(),
        Moun.id: (context) => Moun(),
        Quraysh.id: (context) => Quraysh(),
        Takosur.id: (context) => Takosur(),
        Nos.id: (context) => Nos(),
        Humaza.id: (context) => Humaza(),
        Nasr.id: (context) => Nasr(),
        Asr.id: (context) => Asr(),
        AboutPage.id: (context) => AboutPage(),
        MyHomePage.id: (context) => MyHomePage(title: "title"),
        SignUpPage.id: (context) => SignUpPage(),
        SignInPage.id: (context) => SignInPage(),
        Ismlar.id: (context) => Ismlar(),
        QiblahPage.id: (context) => QiblahPage(),
        DuaPage.id: (context) => DuaPage()
      },
    );
  }
}