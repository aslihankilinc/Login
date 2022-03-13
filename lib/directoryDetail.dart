import 'package:flutter/material.dart';

class DirectoryDetail extends StatefulWidget {

  @override
  State<DirectoryDetail> createState() => _DirectoryDetailState();
}

class _DirectoryDetailState extends State<DirectoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Directory"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children:<Widget> [

          ],
        ),
      ),
    );
  }
}
