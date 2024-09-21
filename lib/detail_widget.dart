import 'package:flutter/material.dart';
import 'package:jokes_app/joke.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    super.key,
    required this.joke,
  });

  final Joke? joke;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.orange,
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(joke?.setup ?? 'belum ada setup'),
            const SizedBox(
              height: 10,
            ),
            Text(joke?.punchline ?? 'belum ada punchline')
          ],
        ),
      ),
    );
  }
}
