import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_scrren.dart';

class Column1 extends StatefulWidget {
  @override
  State<Column1> createState() => _Column1State();
}

class _Column1State extends State<Column1> {
  var selectedIndex = 0;
  static final List<Widget> windowOptions = <Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Document"),
    const Text("Settins"),
  ];

  void getSelectedItemm(int index) {
    setState(() {
      selectedIndex = index;
    });

    print('----------${selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Sodiqjon"),
      // ),
      body: Center(
        child: windowOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: getSelectedItemm,
        elevation: 10,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_sharp), label: "Document"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
