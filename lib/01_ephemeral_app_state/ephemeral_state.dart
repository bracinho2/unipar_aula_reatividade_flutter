 

import 'package:flutter/material.dart';

class EphemeralState extends StatefulWidget {
  const EphemeralState({
    super.key,
    required this.action,
  });

  final Function(bool value) action;

  @override
  State<EphemeralState> createState() => _EphemeralStateState();
}

class _EphemeralStateState extends State<EphemeralState> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (value) {
        setState(() {
          _switchValue = value;
        });

        widget.action(value);
      },
    );
  }
}
