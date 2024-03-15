import 'package:flutter/material.dart';

class DataMakananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Makanan'),
      ),
      body: Center(
        child: Text(
          'Ini Halaman Data Makanan',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
