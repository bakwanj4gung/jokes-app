import 'package:flutter/material.dart';
import 'package:jokes_app/detail_page.dart';
import 'package:jokes_app/detail_widget.dart';
import 'package:jokes_app/joke.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Joke? joke;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final orientation = MediaQuery.orientationOf(context);

    late Widget content;

    if (width > 600 && orientation == Orientation.landscape) {
      //Mode Tablet
      content = Row(
        children: [
          Flexible(
              child: ListJoke(
            onTap: (joke) {
              setState(() {
                this.joke = joke;
              });
            },
            selectedJoke: joke,
          )),
          Flexible(
            child: DetailWidget(joke: joke),
          )
        ],
      );
    } else {
      //Mode HP
      content = ListJoke(
        onTap: (joke) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                joke: joke,
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes App'),
        backgroundColor: Colors.blue,
      ),
      body: content,
    );
  }
}

class ListJoke extends StatelessWidget {
  final Function(Joke joke) onTap;
  final Joke? selectedJoke;

  const ListJoke({super.key, required this.onTap, this.selectedJoke});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokesList.length,
      itemBuilder: (context, index) {
        final joke = jokesList[index];
        return ListTile(
          title: Text(joke.setup),
          onTap: () {
            onTap(joke);
          },
          selected: selectedJoke == joke,
          selectedColor: Colors.red,
        );
      },
    );
  }
}
