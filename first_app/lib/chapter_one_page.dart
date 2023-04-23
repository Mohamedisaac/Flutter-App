import 'package:flutter/material.dart';

class ChapterOnePage extends StatefulWidget {
  const ChapterOnePage({super.key});

  @override
  State<ChapterOnePage> createState() => _ChapterOnePageState();
}

class _ChapterOnePageState extends State<ChapterOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter One"),

        //This will hide the automatic arrow back
        automaticallyImplyLeading: false,

        //This will create a custom arrow back
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); //.pop will delete the current page
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      //The main content of Chapter One
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Web Browsers"),
            const SizedBox(
              height: 10.0,
            ),
            Image.asset('images/browsers.jpg'),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(5.0),
              child: const Text(""" 
              Web browsers allow us to access, retrieve, and search information on the web.
              
              Examples of web browsers include: Chrome, Edge, Safari, Mozilla FireFox, and Opera.
              
              Functions of a web browser include: Accessing and retrieving web information."""),
            ),
          ],
        ),
      ),
    );
  }
}
