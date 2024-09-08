import 'dart:math';
import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unipar_aula_reatividade_flutter/flutter_cart_example/cart_model.dart';
import 'package:unipar_aula_reatividade_flutter/flutter_cart_example/my_cart.dart';

class MyCatalog extends StatefulWidget {
  const MyCatalog({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<MyCatalog> {
  final products = List<String>.generate(50, (index) => 'Item ${index + 1}');
  final _isSelected = List.generate(50, (_) => false);

  Color gerarCorAleatoria() {
    final Random random = Random();
    return Color.fromARGB(
      255, // Opacidade (sempre 255 para cor totalmente opaca)
      random.nextInt(256), // Valor aleatório para o vermelho (0-255)
      random.nextInt(256), // Valor aleatório para o verde (0-255)
      random.nextInt(256), // Valor aleatório para o azul (0-255)
    );
  }

  void myTapHandler(CartModel cart, String item) {
    dev.log(item);
    cart.add(item);
    dev.log(cart.items.toString());
  }

  void selectedIndicator(int index) {
    setState(() {
      _isSelected[index] = !_isSelected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartModel = context.watch<CartModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Catalog'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChangeNotifierProvider.value(
                  value: cartModel,
                  child: const MyCart(),
                ),
              ),
            ),
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final item = products[index];
                var isSelected = _isSelected[index];

                return ListTile(
                  title: Text(item),
                  leading: Container(
                    height: 40,
                    width: 40,
                    color: gerarCorAleatoria(),
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      selectedIndicator(index);

                      myTapHandler(cartModel, item);
                    },
                    child: isSelected
                        ? const Icon(Icons.check)
                        : const Text('ADD'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
