import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        elevation: 0,
        backgroundColor: Colors.orange,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => MyApp())));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
               title: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 23),),
      ),
      body: Card(
        child: ListView(
          children: [
            const ListTile(
              leading: Text('Terms & Conditions',style: TextStyle(fontSize:18),),
             trailing: Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 1,
            ),
            const ListTile(
              leading: Text('Privacy Policy',style: TextStyle(fontSize:18),),
             trailing: Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 1,
            ),
            const ListTile(
              leading: Text('Language',style: TextStyle(fontSize:18),),
             trailing: Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 1,
            ),
            const ListTile(
              leading: Text('Feedback',style: TextStyle(fontSize:18),),
             trailing: Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 1,
            ),
          ],
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
