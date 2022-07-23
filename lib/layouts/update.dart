import 'package:flutter/material.dart';
import 'package:test_flutter/layouts/menu.dart';
import 'package:test_flutter/layouts/search.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          'Update',
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
      body: ListView(
        children: [
           ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.feed,
                color: Colors.white,
              ),
            ),
            title: Text("Donec sed erat ut magna suscipit mattis"),
            trailing: IconButton(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.autorenew,
                color: Colors.orange,
              ),
            ),
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
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.autorenew,
                    color: Colors.orange,
                  ))),
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
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.autorenew,
                  color: Colors.orange,
                )),
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
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.autorenew, color: Colors.orange))),
          Divider(
            thickness: 1,
          ),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
