import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/02_change_notifier/reatividade_change_notifier_controller.dart';

class ReatividadeChangeNotifierPage extends StatefulWidget {
  const ReatividadeChangeNotifierPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ReatividadeChangeNotifierPage> createState() =>
      _ReatividadeChangeNotifierPageState();
}

class _ReatividadeChangeNotifierPageState
    extends State<ReatividadeChangeNotifierPage> {
  final controller = ReatividadeChangeNotifierController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListenableBuilder(
        listenable: controller,
        builder: (context, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  controller.count.toString(),
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
            heroTag: 'cn-button_increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: controller.decrement,
            heroTag: 'cn-button_decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
