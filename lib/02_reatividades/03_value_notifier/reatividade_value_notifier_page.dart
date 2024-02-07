import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/03_value_notifier/reatividade_value_notifier_controller.dart';

class ReatividadeValueNotifierPage extends StatefulWidget {
  const ReatividadeValueNotifierPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeValueNotifierPage> createState() =>
      _ReatividadeValueNotifierPageState();
}

class _ReatividadeValueNotifierPageState
    extends State<ReatividadeValueNotifierPage> {
  final controller = ReatividadeValueNotifierController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: controller,
        builder: (context, value, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  value.toString(),
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
