import 'package:flutter/material.dart';
import 'package:login/directoryDetail.dart';
import 'package:login/models/word.dart';

class DirectoryHome extends StatefulWidget {
  @override
  State<DirectoryHome> createState() => _DirectoryHomeState();
}

class _DirectoryHomeState extends State<DirectoryHome> {
  bool isSearch = false;
  String searchWord = "";

  Future<List<Word>> allWords() async {
    var wordList = <Word>[];
    var w1 = Word(1, "apple", "elma");
    var w2 = Word(2, "bananas", "muz");
    var w3 = Word(3, "success", "başarı");
    var w4 = Word(4, "clock", "saat");
    wordList.add(w1);
    wordList.add(w2);
    wordList.add(w3);
    wordList.add(w4);
    return wordList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearch
            ? TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                ),
                onChanged: (result) {
                  print("Result:$result");
                  setState(() {
                    searchWord = result;
                  });
                },
              )
            : Text("Directory"),
        actions: [
          isSearch
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      isSearch = false;
                      searchWord="";
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isSearch = true;
                    });
                  },
                ),
        ],
      ),
      body: FutureBuilder<List<Word>>(
        future: allWords(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var wordList = snapshot.data;
            return ListView.builder(
              itemCount: wordList!.length,
              itemBuilder: (context, indeks) {
                var word = wordList[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DirectoryDetail()));
                  },
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            word.eng,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(word.turk),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
