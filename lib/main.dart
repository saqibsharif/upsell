// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const UpSell());
}

class UpSell extends StatelessWidget {
  const UpSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Up Sell',
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE8EAEE),
        actions: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Text(
                    'U',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    'Sell',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                    ),
                  ),
                ]),
                Text(
                  'Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.headphones),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.close),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(FontAwesomeIcons.barcode),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'HEAD TIL 1',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'HEAD TIL 2',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'HEAD TIL 3',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'HEAD TIL 4',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://media.istockphoto.com/photos/elegant-young-woman-with-shopping-bags-standing-on-the-street-picture-id1148925683?k=20&m=1148925683&s=612x612&w=0&h=2j6pw-VmcK8dV2PiY248puMXR_Al71cnftdlnLJffVI=',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Best practice Definition & Meaning',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  buildCard(1),
                  buildCard(2),
                  buildCard(3),
                  buildCard(4),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '#BEST TITLE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                titleCard(),
                titleCard(),
                titleCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                titleCard(),
                titleCard(),
                titleCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                titleCard(),
                titleCard(),
                titleCard(),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '#TOP TITLE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  userCard(1),
                  userCard(2),
                  userCard(3),
                  userCard(4),
                  userCard(5),
                  userCard(6),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '#SHOP BY CATEGORY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                titleCard(),
                categoryCard(),
                categoryCard(),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'TERM OF USE',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'CONTACT',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'CAREER',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'AREA RANGE',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'U',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                'Sell',
                                style: TextStyle(
                                  fontSize: 21,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Up',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'PROJECT BY',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            'EZENESS TECHNOLOGY',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.layerGroup,
              color: Colors.black,
            ),
            title: Text(''),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.shoppingBag,
              color: Colors.black,
            ),
            title: Text(''),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.stop,
              color: Colors.black,
            ),
            title: Text(''),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.compass,
              color: Colors.black,
            ),
            title: Text(''),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.star,
              color: Colors.black,
            ),
            title: Text(''),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

Widget userCard(no) => Container(
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xffe8e8e8),
      ),
      width: 80,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Image.network(
                  'https://img.icons8.com/wired/64/000000/circled.png')),
          Text('@_user$no'),
        ],
      ),
    );

Widget buildCard(no) => Container(
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xffe8e8e8),
      ),
      width: 100,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text('Main'),
          Text('Category $no'),
        ],
      ),
    );

Widget titleCard() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xffe8e8e8),
      ),
      width: 116,
      height: 200,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.network(
                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSsGKOlO5k2gbJ1kee7-vTEcwvofObEL_Txq-Lj0y7giSTMddEErH__Q0FbyX36vyVG1YuVA7hZCtAxeAusUrC-VmoIEf98VXDbIZ66txoRfI7HX7nY-yL4oWM&usqp=CAc'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('00.00/-'),
                Text('Product Service'),
                Text('Title Product'),
              ],
            ),
          ),
        ],
      ),
    );

Widget categoryCard() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xffe8e8e8),
      ),
      width: 116,
      height: 200,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.network(
                'https://static.digit.in/product/thumb_185647_product_td_300.jpeg'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('00.00/-'),
                Text('Product Service'),
                Text('Title Product'),
                Text('Service Title'),
              ],
            ),
          ),
        ],
      ),
    );
