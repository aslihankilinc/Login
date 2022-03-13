import 'package:flutter/material.dart';
import 'package:login/models/word.dart';

class DirectoryDetail extends StatefulWidget {
  late Word word;
  DirectoryDetail({required this.word});
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
            Text(
              widget.word.eng,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.teal),
            ),
            Text(
              widget.word.turk,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.pinkAccent),
            ),
          ],
        ),
      ),
    );
  }
}
