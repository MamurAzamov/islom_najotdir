import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TasbehPage extends StatefulWidget {
  const TasbehPage({super.key});

  static const String id = 'tasbeh_page';

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Tasbeh",
          style: TextStyle(
              fontFamily: 'arabic', fontWeight: FontWeight.bold, fontSize: 23),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _resetCounter();
            },
            icon: const Icon(
              Icons.replay_sharp,
              size: 25,
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepOrange[800]!,
          Colors.deepOrange[400]!,
          Colors.deepOrange[200]!,
          Colors.orange[100]!,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Jami: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$_counter ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(55),
                        topRight: Radius.circular(55)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: _incrementCounter,
                            child: const Image(
                              color: Colors.deepOrange,
                              height: 125,
                              width: 125,
                              image: AssetImage("assets/images/buttonn.png"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: const Image(
                              image: AssetImage("assets/images/machit.jpg"),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
