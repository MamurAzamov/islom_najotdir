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
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text(
          "Dasturchi bilan aloqa",
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
                  "Biz bilan quyidagi Telegram havola orqali bog'lanishingiz mumkin.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.deepOrange
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  launch('https://telegram.me/Mamur_707');
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepOrange,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.telegram,color: Colors.white,size: 35,),
                        Text(
                          "Telegram",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
