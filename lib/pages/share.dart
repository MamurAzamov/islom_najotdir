import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  static final String id = 'share';

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _shareLink() async {
    try {
      await FlutterShare.share(
          title:
              'Assalomu alaykum, proyektimni ko‘rish uchun ushbu havolani kuzatishingiz mumkin',
          linkUrl: 'https://github.com/MamurAzamov',
          chooserTitle: 'Flutter proyekt');
    } catch (e) {
      print('Share error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _shareLink,
          child: const Text('Havola ulashish'),
        ),
      ),
    );
  }
}
