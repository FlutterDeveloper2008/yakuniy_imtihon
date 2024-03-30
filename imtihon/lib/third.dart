import 'package:flutter/material.dart';


class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Dynamic Rows',
      home: Scaffold(
       
        body: DynamicRows(),
      ),
    );
  }
}

class DynamicRows extends StatefulWidget {
  @override
  _DynamicRowsState createState() => _DynamicRowsState();
}

class _DynamicRowsState extends State<DynamicRows> {
  List<String> rows = [];

  @override
  void initState() {
    super.initState();
    generateRows();
  }

  void generateRows() {
    String currentRow = "x ";
    rows.add(currentRow);
    for (int i = 0; i < 25; i++) {
      currentRow = currentRow + "x " * 2;
      rows.add(currentRow);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero, // Set padding to zero
      children: List.generate(rows.length, (index) {
        return ListTile(
          title: Text(rows[index],style: TextStyle(fontSize: 20),),
        );
      }),
    );
  }
}
