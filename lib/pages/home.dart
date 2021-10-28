import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (_, __) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: const Icon(
                  Icons.account_circle,
                ),
              ),
              title: const Text("Bitcoin"),
              trailing: const Text("R\$ 164.603,00"),
            ),
          );
        },
      ),
    );
  }
}
