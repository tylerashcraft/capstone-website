import 'package:capstone_website/feedback_page.dart';
import 'package:capstone_website/letter_page.dart';
import 'package:capstone_website/works_cited_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const List<Widget> _destinations = [
    LetterPage(),
    WorksCitedPage(),
    FeedbackPage()
  ];
  static const List<IconData> _destinationIcons = [
    Icons.mail,
    Icons.format_quote,
    Icons.message
  ];
  static const List<String> _destinationLabels = [
    'Letter',
    'Citations',
    'Feedback'
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poor Adult Behavior in Youth Sports Capstone'),
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: List.generate(_destinations.length, (int index) => NavigationRailDestination(
              icon: Icon(_destinationIcons[index]),
              label: Text(_destinationLabels[index])
            )),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) => setState(() => _selectedIndex = index),
          ),
          Expanded(
            child: _destinations[_selectedIndex]
          )
        ],
      )
    );
  }
}
