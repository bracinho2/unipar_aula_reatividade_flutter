import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/04_bloc/bloc_flutter.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/04_bloc/events.dart';

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
  late final CounterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = CounterBloc();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterBloc, int>(
          listener: (context, state) {
            log(state.toString());
          },
          bloc: bloc,
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
          }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => bloc.add(IncrementCounter()),
            heroTag: 'bloc-button_increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () => bloc.add(DecrementCounter()),
            heroTag: 'bloc-button_decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
