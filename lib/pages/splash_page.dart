import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/signin_page.dart';
import '../service/auth_service.dart';
import '../service/log_service.dart';
import '../service/pref_service.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    _initTimer();
    _initNotification();
  }

  _initNotification() async{
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if(settings.authorizationStatus == AuthorizationStatus.authorized){
      LogService.d('User granted permission');
    }else{
      LogService.d('User declined or has not accepted permission');
    }

    _firebaseMessaging.getToken().then((value) async{
      String fcmToken = value.toString();
      Prefs.saveFCM(fcmToken);
      String token = await Prefs.loadFCM();
      LogService.i("FCM Token: ${token}");
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      String title = message.notification!.title.toString();
      String body = message.notification!.body.toString();
      LogService.i(title);
      LogService.i(body);
      LogService.i(message.data.toString());
      //
    });
  }

  void _initTimer(){
    Timer(const Duration(seconds: 2),(){
      _callNextPage();
    });
  }
  _callNextPage(){
    if(AuthService.isLoggedIn()){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }else{
      Navigator.pushReplacementNamed(context, SignInPage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(193, 53, 132, 1),
                  Color.fromRGBO(131, 58, 180, 1)
                ]
            )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text("Xush kelibsiz",style: TextStyle(color: Colors.white,fontSize: 35),),
              ),
            ),
            Text("Islom Najotdir",style: TextStyle(color: Colors.white, fontSize: 16),),
            SizedBox(height: 7,),
            Text("Versiya 1.0.0",style: TextStyle(color: Colors.white, fontSize: 16),),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}