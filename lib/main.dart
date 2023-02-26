import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:requests/requests.dart';
import 'package:valorant_client/valorant_client.dart';
import 'package:tt/valo_cli.dart' as valo;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  Future<List<String>?> get mf async {
    List<String> tempClient =
        await valo.Client_val("Logoskal", "ManOnTheMoon@123");

    return tempClient;
  }

  var skinArry = [
    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltbded518020183769/5eb26f5389bac8148a8006cc/agent-background-generic.JPG",
    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltbded518020183769/5eb26f5389bac8148a8006cc/agent-background-generic.JPG",
    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltbded518020183769/5eb26f5389bac8148a8006cc/agent-background-generic.JPG",
    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltbded518020183769/5eb26f5389bac8148a8006cc/agent-background-generic.JPG",
    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltbded518020183769/5eb26f5389bac8148a8006cc/agent-background-generic.JPG",
    "####",
    "####"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder<Object>(builder: (context, snapshot) {
      return Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/marketbg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/valorant_point.png",
                            scale: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              skinArry[6],
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.teal,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                              mf.then((value) {
                                setState(() {
                                  skinArry[0] = value![0];
                                  skinArry[1] = value[1];
                                  skinArry[2] = value[2];
                                  skinArry[3] = value[3];
                                  skinArry[4] = value[4];
                                  skinArry[5] = value[5];
                                  skinArry[6] = value[6];
                                });
                              });
                            },
                            child: Text('Reveal'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Radianite_Points.webp",
                            scale: 3.5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              skinArry[5],
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                      child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/placeHolder.jpg"),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  color: Colors.red,
                                  width: 4.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: Image(
                            image: NetworkImage(skinArry[4]),
                            fit: BoxFit.cover,
                          ))),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/placeHolder.jpg"),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  color: Colors.red,
                                  width: 4.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: Image.network(skinArry[0]),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/placeHolder.jpg"),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  color: Colors.red,
                                  width: 4.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: Image.network(skinArry[1]),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () async {
                              mf.then((value) {
                                String gg = value![0];
                                setState(() {});
                              });
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/placeHolder.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 4.0,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              child: Image.network(skinArry[2]),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/placeHolder.jpg"),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  color: Colors.red,
                                  width: 4.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12))),
                          child: Image.network(skinArry[3]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }));
  }
}
