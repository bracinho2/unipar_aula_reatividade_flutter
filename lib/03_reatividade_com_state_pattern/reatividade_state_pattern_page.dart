import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/03_reatividade_com_state_pattern/counter_state_pattern.dart';

import 'reatividade_state_pattern_controller.dart';

class ReatividadeStatePatternPage extends StatefulWidget {
  const ReatividadeStatePatternPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeStatePatternPage> createState() =>
      _ReatividadeStatePatternPageState();
}

class _ReatividadeStatePatternPageState
    extends State<ReatividadeStatePatternPage> {
  final controller = ReatividadeStatePatternController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ValueListenableBuilder<CounterState>(
        valueListenable: controller,
        builder: (context, state, _) {
          if (state is ShowCounter) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    state.value.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            heroTag: 'vn-button_increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: controller.decrement,
            heroTag: 'vn-button_decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
