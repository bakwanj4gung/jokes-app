import 'package:flutter/material.dart';
import 'package:jokes_app/detail_widget.dart';
import 'package:jokes_app/joke.dart';

class DetailPage extends StatelessWidget {
  final Joke? joke;
  const DetailPage({super.key, this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Page'),
          backgroundColor: Colors.blue,
        ),
        body: DetailWidget(joke: joke));
  }
}
