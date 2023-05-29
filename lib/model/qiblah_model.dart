import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = (Platform.isAndroid) ? Center(
      child: LoadingAnimationWidget.hexagonDots(
        color: Colors.white,
        size: 50,
      ),
    )
        : const CupertinoActivityIndicator();
    return Container(
      alignment: Alignment.center,
      child: widget,
    );
  }
}

class LocationError extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationError({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = SizedBox(height: MediaQuery.of(context).size.height * 0.2);
    var errorColor = const Color(0xffb00020);

    return SizedBox(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_off,
              size: 150,
              color: errorColor,
            ),
            box,
            Text(
              "Iltimos kompas ishlashi uchun 'Joylashuv' ma'lumotidan foydalanishga ruxsat bering",
              style: TextStyle(
                  color: errorColor,
                  fontWeight: FontWeight.bold
              ),textAlign: TextAlign.center,
            ),
            box,

            ElevatedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(
                  MediaQuery.of(context).size.width * 0.3,
                  MediaQuery.of(context).size.height * 0.06,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Padding(

                padding:  EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                child: Text(
                    "Qayta urinish",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),
              ),
              onPressed: () {
                if (callback != null) callback!();
              },
            )
          ],
        ),
      ),
    );
  }
}

class Streem extends StatelessWidget {
  const Streem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final compassSvg = SvgPicture.asset('assets/images/compass.svg');
    final needleSvg = SvgPicture.asset(
      'assets/images/needle.svg',
      fit: BoxFit.contain,
      height: MediaQuery.of(context).size.height * 0.3,
      alignment: Alignment.center,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: StreamBuilder(
        stream: FlutterQiblah.qiblahStream,
        builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          }
          final qiblahDirection = snapshot.data!;
          return Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: (qiblahDirection.direction * (pi / 180) * -1),
                child: compassSvg,
              ),
              Transform.rotate(
                angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                alignment: Alignment.center,
                child: needleSvg,
              ),
              Positioned(
                bottom: 5,
                child: Text(
                  "${qiblahDirection.offset.toStringAsFixed(3)}°",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class QiblahCompass extends StatefulWidget {
  const QiblahCompass({Key? key}) : super(key: key);

  @override
  State<QiblahCompass> createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  final _locationStreamController =
  StreamController<LocationStatus>.broadcast();

  get stream => _locationStreamController.stream;

  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qibla",style: TextStyle(
          fontSize: 23,
          fontFamily: 'arabic'
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: StreamBuilder(
              stream: stream,
              builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingIndicator();
                }
                if (snapshot.data!.enabled == true) {
                  switch (snapshot.data!.status) {
                    case LocationPermission.always:
                    case LocationPermission.whileInUse:
                      return const QiblahCompassWidget();

                    case LocationPermission.denied:
                      return LocationError(
                        error: "Joylashuv ma'lumotidan foydalanishga ruxsat berilmagan",
                        callback: _checkLocationStatus,
                      );
                    case LocationPermission.deniedForever:
                      return LocationError(
                        error: "Joylashuv ma'lumotidan foydalanish rad etildi",
                        callback: _checkLocationStatus,
                      );
                    default:
                      return Container();
                  }
                } else {
                  return LocationError(
                    error: "Iltimos 'Joylashuv' ma'lumotidan foydalanishga ruxsat bering",
                    callback: _checkLocationStatus,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final location = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(location);
    } else {
      _locationStreamController.sink.add(locationStatus);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }
}

class QiblahCompassWidget extends StatelessWidget {
  const QiblahCompassWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: Streem(),
    );
  }
}