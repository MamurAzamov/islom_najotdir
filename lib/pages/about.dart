import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);
  static const String id = 'about';

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text(
          "Biz haqimizda",
          textAlign: TextAlign.start,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                child: const Text(
                  "Assalomu alaykum va rahmatulloh va barakatuh!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'font',
                      color: Colors.deepOrange
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  const EdgeInsets.only(top: 30, left: 10),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(135, 40),
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        launch('https://telegram.me/Mamur_575');
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.telegram_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            "Telegram",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(top: 30, right: 10),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(135, 40),
                          backgroundColor: Colors.red),
                      onPressed: () {
                        launch('https://instagram.com/mamurazamov_');
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            CommunityMaterialIcons.instagram,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            "Instagram",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 10),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(135, 40),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    launch('https://github.com/MamurAzamov');
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CommunityMaterialIcons.github,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 3,),
                      Text(
                        "GitHub",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
