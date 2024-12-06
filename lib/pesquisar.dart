import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pesquisar extends StatefulWidget {
  @override
  State<Pesquisar> createState() => _PesquisarState();
}

class _PesquisarState extends State<Pesquisar> {
  String savedData = "Nenhum dado salvo";
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', controller.text).then((value) {setState(() { savedData = controller.text;});});
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      savedData = prefs.getString('data') ?? "Nenhum dado salvo";
      controller.text = savedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Pesquisar...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search, color: Colors.black26),
                        onPressed: () {saveData();}),
                      filled: true,
                      fillColor: Color.fromRGBO(132, 143, 145, 50),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Color.fromRGBO(132, 143, 145, 1), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Histórico de Pesquisas", style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 27),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$savedData", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bolo de cuba", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Cha de b... boldo!!!", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Porra recheada", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Suco de coca", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Arroz de grelo", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Catuaba", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Punheta de bacalhau", style: TextStyle(fontSize: 18, color: Colors.black38)),
                ),
                Container(height: 2, color: Color.fromRGBO(132, 143, 145, 50)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}