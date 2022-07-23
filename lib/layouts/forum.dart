import 'package:flutter/material.dart';
import 'package:test_flutter/layouts/menu.dart';
import 'package:test_flutter/layouts/search.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);
  

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  
  final tabs = ["All","Federal", "Democracy","Institutions", "Politic","Campaigns"];


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
        appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          'Forum',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leadingWidth: 1500,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Search())));
            },
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Menu())));
              },
              icon: Icon(Icons.menu),
              color: Colors.orange,
            ),
          ),
        ],
        bottom: TabBar(
              indicatorColor: Colors.orange,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
      ),
      body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Text(tab),
                ),
            ],
          ),
        )
      )
    );
  }
}
 

