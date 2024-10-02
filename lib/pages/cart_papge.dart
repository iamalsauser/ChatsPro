import 'package:flutter/material.dart';

class CartPapge extends StatefulWidget {
  const CartPapge({super.key});

  @override
  State<CartPapge> createState() => _CartPapgeState();
}

class _CartPapgeState extends State<CartPapge> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("cart"),
    );
  }
}
