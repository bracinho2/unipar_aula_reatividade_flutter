import 'package:flutter/material.dart';

class ReatividadeOffPage extends StatefulWidget {
  const ReatividadeOffPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeOffPage> createState() => _ReatividadeOffPageState();
}

class _ReatividadeOffPageState extends State<ReatividadeOffPage> {
  final int _counter = 0;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
  }

  void _decrementCounter() {
    // setState(() {
    //   _counter--;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            heroTag: 'st-button-increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            heroTag: 'st-button-decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
