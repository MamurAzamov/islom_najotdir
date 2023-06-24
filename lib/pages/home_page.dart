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
          chooserTitle: '');
    } catch (e) {
      print('Share error: $e');
    }
  }

  _dialogLogout() async {
    var result = await Utils.dialogCommon(
        context, "Islom najotdir", "Akkountdan chiqishni xohlaysizmi", false);
    if (result != null && result) {
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
        backgroundColor: Colors.deepOrange,
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
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomePage.id);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white60))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Asosiy",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launch("https://Telegram.me/OnlaynTalim_bot");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white60))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.telegram,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Telegram bot",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _shareLink();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white60))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Ulashish",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AboutPage.id);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white60))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Biz haqimizda",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                _dialogLogout();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white60))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Chiqish",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Islom najotdir",
          style: TextStyle(
              fontFamily: 'arabic',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutPage.id);
              },
              icon: const Icon(Icons.info_outline_rounded))
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.deepOrange[800]!,
            Colors.deepOrange[400]!,
            Colors.deepOrange[300]!,
            Colors.orange[100]!,
          ])),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.calendar_view_day_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                "Juma 23-iyun",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Text(
                                "5 Zulhijja 1444",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.my_location,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Toshkent",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Eslatma",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 125,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bomdod",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "04:07",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, QiblahPage.id);
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons.solidQibla,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Qibla",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, QuranPage.id);
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons.solidQuran2,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Qur'on",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, Ismlar.id);
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons.allah99,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Ismlar",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, TasbehPage.id);
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons.solidTasbih3,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Tasbeh",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Utils.showToast(
                                          "Bu funksiya hozircha qo'shilmagan");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons
                                                .solidPrayingPerson,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Namoz",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Utils.showToast(
                                          "Bu funksiya hozircha qo'shilmagan");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      height: 125,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FlutterIslamicIcons.solidPrayer,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Duolar",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 125,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FlutterIslamicIcons.locationMosque,
                                          size: 60,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Masjid",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
