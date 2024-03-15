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
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Makanan',
              ),
              // Buat validator jika diperlukan
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Minuman',
              ),
              // Buat validator jika diperlukan
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Dessert',
              ),
              // Buat validator jika diperlukan
            ),
             SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menangani penekanan tombol submit di sini
              },
              child: Text('Submit'),
            ),
            
          ],
        ),
      ),
    );
  }
}
