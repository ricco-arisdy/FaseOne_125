import 'package:flutter/material.dart';

class DataMakananPage extends StatelessWidget {
  final String name;
  
  final String phoneNumber;


  DataMakananPage({
    required this.name,
   
    required this.phoneNumber,
   
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Makanan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama: $name',
              style: TextStyle(fontSize: 24),
            ),
          
            Text(
              'Nomor Telepon: $phoneNumber',
              style: TextStyle(fontSize: 24),
            ),
            
          ],
        ),
      ),
    );
  }
}
