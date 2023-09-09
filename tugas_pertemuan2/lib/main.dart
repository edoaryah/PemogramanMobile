// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color warna1 = Color(0xFFFD4556);
    Color warna2 = Color(0xFFECE8E1);
    Color warna3 = Color(0xFFBD3944);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: warna1,
          title: const Text('Lenz'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                'image/val2.png', // Path gambar dari aset
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: warna2,
              child: Column(
                children: [
                  //Container pertama
                  Container(
                    height: 40.0,
                    child: GridView.count(
                      childAspectRatio: (8 / 2),
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          color: warna2,
                          alignment: Alignment.center,
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          color: warna2,
                          alignment: Alignment.center,
                          child: Text(
                            "Career",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Container kedua (Stack)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 4.0,
                      ),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 18.0, bottom: 14.0),
                          alignment: Alignment.bottomLeft,
                          color: warna1,
                          child: Text(
                            "Astra and Skye New Patch 7.04",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          height: 350.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15.0),
                          alignment: Alignment.bottomCenter,
                          color: Colors.black,
                          child: Text("I'm out of astral stars.",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                          height: 300.0,
                          width: 400.0,
                        ),
                        Container(
                          child: Image.asset(
                            'image/val5.png',
                            fit: BoxFit.cover,
                          ),
                          height: 250.0,
                          width: 400.0,
                        ),
                      ],
                    ),
                  ),

                  //kontainer ketiga
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 4.0,
                      ),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: warna1,
                              width: 4.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'image/val7.png',
                                  fit: BoxFit.cover,
                                ),
                                width: 180.25,
                                height: 125.0,
                              ),
                              Container(
                                color: warna3,
                                padding: EdgeInsets.all(14.0),
                                child: Text(
                                  "The new Valorant 7.04 patch notes preview includes a Jett nerf, balancing Astra and Skye's abilities, and some changes to other agents.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                width: 180.25,
                                height: 125.0,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 15.0, top: 8.0),
                              color: warna1,
                              child: Text(
                                "Jett",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              width: 368.5,
                              height: 40.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //kontainer keempat
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 4.0,
                      ),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: warna1,
                              width: 4.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'image/val8.png',
                                  fit: BoxFit.cover,
                                ),
                                width: 180.25,
                                height: 125.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(14.0),
                                color: warna3,
                                child: Text(
                                  "We’re looking to slightly refine Sage's strengths to be more about fortifying areas she controls and helping allies, rather than offense-focused with her utility.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                width: 180.25,
                                height: 125.0,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 15.0, top: 8.0),
                              color: warna1,
                              child: Text(
                                "Sage",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              // width: double.infinity,
                              width: 368.5,
                              height: 40.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
