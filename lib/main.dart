// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listas/contato.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'Contacts',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    contatos[index].nomeCompleto[0],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  contatos[index].nomeCompleto,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(contatos[index].email),
              );
            },
          )),
    );
  }
}

List<String> linguagens = ['Java', 'C#', 'Python', 'Javascript', 'Dart', 'Go'];

List<Contato> contatos = [
  Contato('Alma Cris', 'alma@gmail.com'),
  Contato('Livia Gallavrio', 'liviagallafrio@gmail.com'),
  Contato('Sophia Sousa', 'sophiasousa@gmail.com'),
  Contato('Luis Miguel', 'luismiguel@gmail.com'),
  Contato('Macuco', 'Macuco@gmail.com'),
];
