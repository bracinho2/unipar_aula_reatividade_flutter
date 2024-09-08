import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/05_cubit/cubit.dart';

class CubitPage extends StatefulWidget {
  const CubitPage({
    super.key,
  });

  @override
  State<CubitPage> createState() => _CubitPageState();
}

class _CubitPageState extends State<CubitPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const ReatividadeCubitPage(
        title: 'Reatividade com Cubit',
      ),
    );
  }
}

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
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterCubit, int>(
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
        },
      ),
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
