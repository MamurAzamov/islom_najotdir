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
  _remove(){
    setState(() {
      _counter;
    });
  }


  /*
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasbeh",style: TextStyle(
            fontFamily: 'arabic',
            fontWeight: FontWeight.bold,
            fontSize: 23),),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/t.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  color: Colors.white24,
                  child: Row(
                    children: [
                      const Text(
                        " Jami: ", style: TextStyle(color: Colors.deepOrange, fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$_counter ',
                        style: const TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: InkWell (
                      onTap: _incrementCounter,
                      child: const Image(
                        height: 125,
                        width: 125,
                        image: AssetImage("assets/images/buttonn.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
   */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Tasbeh",style: TextStyle(
            fontFamily: 'arabic',
            fontWeight: FontWeight.bold,
            fontSize: 23),),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 210,
                width: double.infinity,
                color: Colors.deepOrange.withOpacity(0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          " Jami: ", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$_counter ',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell (
                    onTap: _incrementCounter,
                    child: const Image(
                      color: Colors.deepOrange,
                      height: 125,
                      width: 125,
                      image: AssetImage("assets/images/buttonn.png"),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage("assets/images/machit.jpg"),),
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}