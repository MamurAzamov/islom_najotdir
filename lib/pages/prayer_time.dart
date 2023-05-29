import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(NamazVaqtlariApp());
}

class NamazVaqtlariApp extends StatefulWidget {
  @override
  _NamazVaqtlariAppState createState() => _NamazVaqtlariAppState();
  static final String id = 'amoz';
}

class _NamazVaqtlariAppState extends State<NamazVaqtlariApp> {
  final String _apiUrl = 'https://api.aladhan.com/v1/calendarByCity';
  final String _city = 'Samarkand'; // O'zingizning shahringizni tanlang
  final String _country = 'Uzbekistan'; // O'zingizning mamlakatingizni tanlang
  final List<String> _prayerTimes = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];
  Map<String, dynamic> _todayPrayerTimes = {};

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    getPrayerTimes();
    initializeNotifications();
  }

  Future<void> getPrayerTimes() async {
    var response = await http.get(Uri.parse('$_apiUrl?city=$_city&country=$_country'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var prayerTimes = data['data'][0]['timings'];
      setState(() {
        _todayPrayerTimes = prayerTimes;
      });
    }
  }

  Future<void> showPrayerTimeNotification(String prayerName, String prayerTime) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'channelId',
      'channelName',

      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      prayerName,
      'Vaqt: $prayerTime',
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }

  void initializeNotifications() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    var androidInitializationSettings = AndroidInitializationSettings('app_icon');
    var iOSInitializationSettings = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iOSInitializationSettings,
    );
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Namaz Vaqtlari'),
        ),
        body: ListView.builder(
            itemCount: _prayerTimes.length,
            itemBuilder: (context, index) {
      String prayerName = _prayerTimes[index];
      String prayerTime = _todayPrayerTimes[prayerName];

      return ListTile(
      title: Text(prayerName),
      subtitle: Text(prayerTime),
      onTap: () {
      showPrayerTimeNotification(prayerName, prayerTime);
      },
      );
      },
      ),
    ),
    );
  }
}