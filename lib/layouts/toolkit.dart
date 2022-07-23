import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:test_flutter/layouts/menu.dart';
import 'package:test_flutter/layouts/search.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          'Tools',
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
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: () {
              print('hello');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF5F5F5),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffDADADA),
                    ),
                    width: 141.39,
                    height: 102.24,
                    child: Image.asset('images/Frame.png'),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Political\nIdeologies',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF5F5F5),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffDADADA),
                  ),
                  width: 141.39,
                  height: 102.24,
                  child: Image.asset('images/Frame_2.png'),
                ),
                SizedBox(height: 2),
                Text(
                  'Political\nInstitutions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF5F5F5),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffDADADA),
                  ),
                  width: 141.39,
                  height: 102.24,
                  child: Image.asset('images/Frame_3.png'),
                ),
                SizedBox(height: 2),
                Text(
                  'Political\nActors',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF5F5F5),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffDADADA),
                  ),
                  width: 141.39,
                  height: 102.24,
                  child: Image.asset('images/Frame_4.png'),
                ),
                SizedBox(height: 2),
                Text(
                  'Campaigning',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
