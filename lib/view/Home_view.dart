import 'package:flutter/material.dart';
import 'package:twitter_ui/widget/cart_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Icon(
            Icons.account_circle,
            size: 40,
          ),
        ),
        title: const Text('X',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: SizedBox(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CardWidget();
          },
        ),
      ),
    );
  }
}
