import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => MyApp())));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:  TextField(
          cursorColor: Colors.orange,
          decoration: InputDecoration(
            filled: true,
            fillColor : Colors.white,
            contentPadding: EdgeInsets.all(5),
            border: OutlineInputBorder(
              borderSide : BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            hintText: 'Search....',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.menu),
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.feed,
                color: Colors.white,
              ),
            ),
            title: Text("Donec sed erat ut magna suscipit mattis"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.feed,
                color: Colors.white,
              ),
            ),
            title: Text("Donec sed erat ut magna suscipit mattis"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.feed,
                color: Colors.white,
              ),
            ),
            title: Text("Donec sed erat ut magna suscipit mattis"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.feed,
                color: Colors.white,
              ),
            ),
            title: Text("Donec sed erat ut magna suscipit mattis"),
          ),
          Divider(
            thickness: 1,
          ),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
