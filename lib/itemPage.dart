import 'package:amitretailapp/HomePage2.dart';

import 'package:flutter/material.dart';
import 'HomePage.dart';

class itemPage extends StatefulWidget {
  final String s;
  final String txt1;
  final String txt2;
  final int p;
  final String txt3;

  const itemPage( this.s, this.txt1, this.txt2, this.p, this.txt3):super();

  @override
  _itemPageState createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {

  String s = '';
  String txt1 = '';
  String txt2 = '';
  int p = 0;
  String txt3 = '';

  _ItemPageState(String s, String txt1, String txt2, int p ,String txt3){
    this.s= s;
    this.txt1= txt1;
    this.txt2= txt2;
    this.p= p;
    this.txt3 = txt3;

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios),
              onTap: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => HomePage2()),
                );
              },
            )
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(s),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(txt1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(txt2),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text('$p',
                      style: TextStyle(
                          color: Colors.red
                      ),
                    ),
                    SizedBox( width: 7),
                    IconButton(icon: Icon(Icons.remove),
                      onPressed: (){
                        print('pressed');
                      },
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.white12,
                      child: Text('0'),
                    ),
                    IconButton(icon: Icon(Icons.add),
                      onPressed: (){
                        print('pressed');
                      },
                      color: Colors.red,
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Text(txt3),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
