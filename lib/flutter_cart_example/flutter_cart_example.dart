import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unipar_aula_reatividade_flutter/flutter_cart_example/cart_model.dart';
import 'package:unipar_aula_reatividade_flutter/flutter_cart_example/my_catalog.dart';

class FlutterCartExample extends StatelessWidget {
  const FlutterCartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartModel(),
      child: const MyCatalog(title: 'My Catalog'),
    );
  }
}
