import 'package:flutter/material.dart';

import 'ListMalumot.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "material",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomeWidget()
    )
  );
}

