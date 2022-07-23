import 'package:flutter/material.dart';
import 'package:test_flutter/layouts/toolkit.dart';
import 'package:test_flutter/layouts/home.dart';
import 'package:test_flutter/layouts/update.dart';
import 'package:test_flutter/layouts/forum.dart';
import 'package:test_flutter/layouts/publication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: title,
      home: MyHomePage(title: title),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const String page1 = "Home";
const String page2 = "Toolkit";
const String page3 = "Update";
const String page4 = "Forum";
const String page5 = "Publication";
const String title = "Welcome my App";


class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late Widget _page4;
  late Widget _page5;
  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _page1 = const Page1();
    _page2 = const Page2();
    _page3 = const Page3();
    _page4 = const Page4();
    _page5 = const Page5();
    _pages = [_page1, _page2, _page3, _page4, _page5];
    _currentIndex = 0;
    _currentPage = _page1;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          _changeTab(index);
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: page1,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: page2,
            icon: Icon(Icons.border_all),
          ),
          BottomNavigationBarItem(
            label: page3,
            icon: Icon(Icons.flag),
          ),
          BottomNavigationBarItem(
            label: page4,
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            label: page5,
            icon: Icon(Icons.note),
          ),
        ],
      ),
     );
  }
}
