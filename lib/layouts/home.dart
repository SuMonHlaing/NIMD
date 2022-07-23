
import 'package:flutter/material.dart';
import 'package:test_flutter/layouts/menu.dart';
import 'package:test_flutter/layouts/search.dart';
import 'package:test_flutter/layouts/toolkit.dart';
import 'package:test_flutter/layouts/update.dart';
import 'package:test_flutter/layouts/forum.dart';
import 'package:test_flutter/layouts/publication.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Image.asset(
          'images/image_1.png',
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
      ),
      body: Column(
        children: [
          Image.asset('images/image_2.jpg'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'English',
                    style: TextStyle(color: Colors.orange),
                  )),
              Text(
                '.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Myanmar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Wrap(
            spacing: 0,
            children: [
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_pin),
                      ),
                    ),
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.border_all)),
                    ),
                    Text(
                      'Toolkit',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.book)),
                        ),
                        Text(
                          'Publications',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.people),
                      ),
                    ),
                    Text(
                      'Forum',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person_add)),
                    ),
                    Text(
                      'Register',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
