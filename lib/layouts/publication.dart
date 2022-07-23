import 'package:flutter/material.dart';
import 'package:test_flutter/layouts/menu.dart';
import 'package:test_flutter/layouts/search.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          'Publication',
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               padding: EdgeInsets.only(left:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffF5F5F5)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex : 1,child: Text('Ideologies',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  Align(
                    alignment: Alignment.bottomRight, child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
                      child: Image.asset('images/image_8.png',alignment: Alignment.bottomCenter,)))
                ],
              ),
            ),
            SizedBox(height: 3,),
             Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               padding: EdgeInsets.only(left:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffF5F5F5)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex : 1,child: Text('Dialogue',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  Align(
                    alignment: Alignment.bottomRight, child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
                      child: Image.asset('images/image_9.png',alignment: Alignment.bottomCenter,)))
                ],
              ),
            ),
            SizedBox(height: 3,),
             Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               padding: EdgeInsets.only(left:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffF5F5F5)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex : 1,child: Text('Meditation and Conflict\nResolution',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  Align(
                    alignment: Alignment.bottomRight, child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
                      child: Image.asset('images/image_10.png',alignment: Alignment.bottomCenter,)))
                ],
              ),
            ),
            SizedBox(height: 3,),
             Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               padding: EdgeInsets.only(left:10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffF5F5F5)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex : 1,child: Text('Gender',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  Align(
                    alignment: Alignment.bottomRight, child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
                      child: Image.asset('images/image_12.png',alignment: Alignment.bottomCenter,)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
