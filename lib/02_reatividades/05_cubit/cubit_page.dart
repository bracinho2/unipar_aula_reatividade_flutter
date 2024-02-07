import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/05_cubit/cubit.dart';

class ReatividadeCubitPage extends StatefulWidget {
  const ReatividadeCubitPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeCubitPage> createState() => _ReatividadeCubitPageState();
}

class _ReatividadeCubitPageState extends State<ReatividadeCubitPage> {
  late final CounterCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = CounterCubit();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterCubit, int>(
          bloc: cubit,
          listener: (context, state) {
            log(state.toString());
          },
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
            onPressed: () => cubit.increment(),
            heroTag: 'bloc-button_increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () => cubit.decrement(),
            heroTag: 'bloc-button_decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
