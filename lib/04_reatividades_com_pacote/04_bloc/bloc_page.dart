import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_events.dart';
import '../bloc/bloc_flutter.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({
    super.key,
  });

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const ReatividadeBlocPage(
        title: 'Reatividade com Bloc',
      ),
    );
  }
}

class ReatividadeBlocPage extends StatefulWidget {
  const ReatividadeBlocPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeBlocPage> createState() => _ReatividadeBlocPageState();
}

class _ReatividadeBlocPageState extends State<ReatividadeBlocPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterBloc, int>(
        listener: (context, state) {
          // Aqui você pode tomar uma ação baseada na mudança do Counter;
          log(state.toString());
        },
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => bloc.add(CounterIncrementPressed()),
            heroTag: 'bloc-button_increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () => bloc.add(CounterDecrementPressed()),
            heroTag: 'bloc-button_decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
