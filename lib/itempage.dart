import 'package:flutter/material.dart';

void main(){
   runApp(ItemPage());
}


class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Page"),
      ),
      body: const Center(
        child: Text("Welcome to the Item Page!"),
      ),
    );
  }
}
