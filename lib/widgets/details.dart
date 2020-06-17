import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page"),),
      body: Container(child: Text("To do for tomorrow"),),
      
    );
  }
}