import 'package:flutter/material.dart';
import 'login.dart';
import 'tela_principal.dart';
import 'pesquisar.dart';
import 'minhaconta.dart';

//CORES:
// #730a0e
// #bbdddf
// #b0bec1
// #a6a0a3
// #9c8285

void main() {
  runApp(MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(176, 190, 193, 1),
      )));
}

class MeuApp extends StatefulWidget {
  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  int indiceAtual = 0;

  List telas = [
    TelaPrincipal(),
    Pesquisar(),
    MinhaConta(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(115, 10, 14, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage("https://raw.githubusercontent.com/claaz/cu-linaria/refs/heads/master/lib/logo.png"), height: AppBar().preferredSize.height*0.8),
          ],
        ),
      ),
      body: telas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual,
        onTap: quandoClicar,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        selectedItemColor: Color.fromRGBO(187, 221, 223, 1),
        unselectedItemColor: Color.fromRGBO(166, 160, 163, 1),
        backgroundColor: Color.fromRGBO(115, 10, 14, 1),
      ),
    );
  }
  void quandoClicar(int index){
    setState(() {
      indiceAtual = index;
    });
  }
}