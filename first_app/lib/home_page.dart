import 'package:first_app/chapter_one_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        //You can make it ElevetedButton
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const ChapterOnePage();
          }));
        },
        child: const Text("Chapter One"),
      ),
    );
  }
}
