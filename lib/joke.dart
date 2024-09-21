class Joke {
  final int id;
  final String type;
  final String setup;
  final String punchline;

  Joke(
      {required this.id,
      required this.type,
      required this.setup,
      required this.punchline});
}

final List<Joke> jokesList = [
  Joke(
      id: 1,
      type: "general",
      setup: "How do you make a tissue dance?",
      punchline: "Damn."),
  Joke(
      id: 2,
      type: "general",
      setup: "What's forrest gump's password?",
      punchline: "1Forrest1"),
  Joke(
      id: 3,
      type: "general",
      setup: "What do you call a belt made out of watches?",
      punchline: "a waist of time"),
  Joke(
      id: 4,
      type: "general",
      setup: "Why can't bicycles stand on their own?",
      punchline: "They are two tired."),
  Joke(
      id: 5,
      type: "general",
      setup: "What did the fish say when it hit the wall?",
      punchline: "Damn."),
];
