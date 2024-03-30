import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  Text texter = Text('');
  String pass = '123456';
  String user = 'aziz';
  String us = '';
  String pa = '';
  TextEditingController controller = TextEditingController();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  radius: 16,
                  backgroundColor: Colors.green,
                ),
                Text(
                  ' Bato',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'welcome!',
              style: TextStyle(fontSize: 65),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 57,
              width: 290,
              child: TextField(textAlign: TextAlign.center,cursorColor: Colors.black,
                controller: controller,
                decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.0))),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.0),
                      ),
                    ),
label: Padding(
  padding: const EdgeInsets.only(top:10),
  child: Text('Username'),
),                    labelStyle: TextStyle(color: Colors.white)),
              ).asGlass(clipBorderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 57,
              width: 290,
              child: TextField(textAlign: TextAlign.center,cursorColor: Colors.black,
                controller: _controller,
                decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
label: Padding(padding: EdgeInsets.only(top: 10),child: Text('Password'),),                    labelStyle: TextStyle(color: Colors.white)),
              ).asGlass(clipBorderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text == user && _controller.text == pass) {
                  Navigator.pushNamed(context, "third");
                } else {
                  setState(() {
                    texter = Text(
    'Password or Username is wrong !!!',
    style: TextStyle(color: Colors.red),
  );
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '          Login           ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255, 68, 24, 169))),
            ),
            SizedBox(
              height: 20,
            ),
            texter,
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'parol: $pass',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  'username: $user',
                  style: TextStyle(fontSize: 17),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('i/back.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
