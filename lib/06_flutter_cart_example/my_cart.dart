import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:unipar_aula_reatividade_flutter/06_flutter_cart_example/cart_model.dart';

class MyCart extends StatefulWidget {
  const MyCart({
    super.key,
  });

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            onPressed: () => cart.removeAll(),
            icon: const Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    cart.items[index],
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 300,
            child: Center(
              child: Text(
                cart.totalPrice.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
