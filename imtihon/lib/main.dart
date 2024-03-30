import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:imtihon/sec.dart';
import 'package:imtihon/third.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'main',
    routes: {'main': (context) => main1(), 'sec': (context) => sec(),'third':(context) => Third()},
  ));
}

class main1 extends StatefulWidget {
  const main1({super.key});

  @override
  State<main1> createState() => _main1State();
}

Container acon = Container(
  height: 100,
  child: Center(),
);

class _main1State extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('i/back.jpg'), fit: BoxFit.cover)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 14,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          ' Bato',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 250,
                          child: Image.asset('i/a.gif'),
                        ),
                        Column(
                          children: [
                            Text(
                              'Hello!',
                              style: TextStyle(fontSize: 45),
                            ),
                            Text('welcome to our application best plase'),
                            Text('to manage your schudule'),
                          ],
                        ),
                        acon,
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        Color.fromARGB(255, 68, 24, 169))),
                            onPressed: () {
                              setState(() {
                                Future.delayed(
                                  Duration(seconds: 5),(){Navigator.pushNamed(context, 'sec');}
                                );
                                acon = Container(
                                  height: 100,
                                  child: Center(
                                    child: SpinKitRing(
                                      color: Colors.black,
                                      lineWidth: 4,
                                    ),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              '                   Next                      ',
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              height: 580,
              width: double.infinity,
            ).asGlass(clipBorderRadius: BorderRadius.circular(10)),
          ))),
    );
  }
}
