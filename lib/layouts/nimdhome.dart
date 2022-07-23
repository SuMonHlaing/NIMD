import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Toolkit',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Updates',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Forum',
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: 'Publications',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/image_1.png',
        ),
        leadingWidth: 1500,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.orange,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
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
      ),
    );
  }
}
