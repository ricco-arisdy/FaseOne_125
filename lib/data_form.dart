import 'package:flutter/material.dart';
import 'package:ucp1_pml/data_makanan.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _address = '';
  String _phoneNumber = '';
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Your Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Welcome to Restoo"),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn3.vectorstock.com/i/1000x1000/46/82/resto-logo-template-design-vector-33644682.jpg"),
                radius: 70,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  // Check if the input contains only letters
                  if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'Name should contain only letters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your alamat';
                  }
                  // Check if the input contains only letters
                  if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'alamat should contain only letters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              SizedBox(height: 16),
              Text('Gender', style: TextStyle(fontSize: 16)),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'laki-laki',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  Text('laki-laki'),
                  Radio(
                    value: 'perempuan',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                  Text('perempuan'),
                ],
              ),
              SizedBox(height: 16),
              Center(
  child: ElevatedButton(
    onPressed: () {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        // Now you can use the form values
        print('Name: $_name');
        print('Address: $_address');
        print('Phone Number: $_phoneNumber');
        print('Gender: $_gender');
        
        // Setelah data disubmit, pindah ke halaman DataMakananPage
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataMakananPage()),
        );
      }
    },
    child: Text('Submit'),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}
