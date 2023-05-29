
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DuaPage extends StatefulWidget {
  const DuaPage({Key? key}) : super(key: key);

  @override
  State<DuaPage> createState() => _DuaPageState();
  static final String id = 'dua_page';
}

class _DuaPageState extends State<DuaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
            "Duolar",
          style: TextStyle(
            fontSize: 23,
            fontFamily: 'arabic'
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
            child: SlideInLeft(
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide.none),
                child: Container(
                  padding: const EdgeInsets.only(top: 17,left: 10,right: 10,bottom: 17),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Uyqudan uyg'onganda", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
