import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/01_ephemeral_app_state/ephemeral_state.dart';

class AppState extends StatefulWidget {
  const AppState({
    super.key,
  });

  @override
  State<AppState> createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {
  bool _changeColor = false;

  void changeState() {
    setState(
      () {
        _changeColor = !_changeColor;
      },
    );
    log('App State Change! ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App State'),
      ),
      backgroundColor: _changeColor ? Colors.red : Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Ephemeral State'),
          ),
          EphemeralState(
            action: (value) {
              log('Ephemeral State Button Changed to $value');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        child: const Icon(Icons.update),
      ),
    );
  }
}
