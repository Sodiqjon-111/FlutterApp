import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomeWidget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondWidget(),
                  ),
                );
              },
              child: Text("A shifga otish"),
            )
          ],
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SecondWidget",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("second page",
                style: TextStyle(fontSize: 26, color: Colors.red))
          ],
        ),
      ),
    );
  }
}
