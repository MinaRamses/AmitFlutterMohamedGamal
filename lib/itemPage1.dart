
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'HomePage2.dart';

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
        home: createItemPage()
      );
  }

  Widget createItemPage(){
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage2()),

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
                child: Image.network('https://alarm-stores.com/wp-content/uploads/2020/11/iPhone-12-Pro-Max.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text("data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("data"),
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
                  Text('1000',
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
              Text("the description"),
            ],
          ),
        ),
      ),
    );
  }
}
