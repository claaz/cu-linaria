import 'package:flutter/material.dart';
import 'login.dart';

class MinhaConta extends StatefulWidget {
  @override
  State<MinhaConta> createState() => _MinhaContaState();
}

class _MinhaContaState extends State<MinhaConta> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: Stack(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)
                                ),
                                color: Color.fromRGBO(115, 10, 14, 1),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 15.0,
                                      offset: Offset(0.0, 0.75)
                                  )
                                ]
                            ),
                            height: 150,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, right: 50),
                              child: Row(
                                children: [
                                  Image(
                                      image: NetworkImage("https://raw.githubusercontent.com/claaz/cu-linaria/refs/heads/master/lib/profile.png"),
                                      height: 120,
                                      width: 120
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          "Marcos Rúbio",
                                          style: TextStyle(
                                              color: Color.fromRGBO(187, 221, 223, 1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21
                                          )
                                      ),
                                      Text(
                                          "Cuzinheiro",
                                          style: TextStyle(
                                              color: Color.fromRGBO(166, 160, 163, 1),
                                              fontStyle: FontStyle.italic,
                                              fontSize: 15
                                          )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                        Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                    "Receitas Favoritas:",
                                    style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color.fromRGBO(176, 190, 193, 50),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54,
                                              blurRadius: 5.0,
                                              offset: Offset(0.0, 0.75)
                                          )
                                        ]
                                    ),
                                    child: Row(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.all(8.5),
                                              child: CircleAvatar(
                                                  backgroundImage: NetworkImage("https://conteudo.imguol.com.br/c/entretenimento/9f/2020/06/15/bolo-de-fuba-1592241605327_v2_4x3.jpg")
                                              )
                                          ),
                                          Text(
                                              "Bolo de Cubá",
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.black45
                                              )
                                          ),
                                          SizedBox(width: 6),
                                          Icon(Icons.star_rounded, color: Colors.amber)
                                        ]
                                    ),
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color.fromRGBO(176, 190, 193, 50),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54,
                                              blurRadius: 5.0,
                                              offset: Offset(0.0, 0.75)
                                          )
                                        ]
                                    ),
                                    child: Row(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.all(8.5),
                                              child: CircleAvatar(
                                                  backgroundImage: NetworkImage("https://diariodonordeste.verdesmares.com.br/image/contentid/policy:1.3120626:1628532325/Cha-de-boldo.jpg")
                                              )
                                          ),
                                          Text(
                                              "Chá de Boldo",
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.black45
                                              )
                                          ),
                                          SizedBox(width: 6),
                                          Icon(Icons.star_rounded, color: Colors.amber)
                                        ]
                                    ),
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color.fromRGBO(176, 190, 193, 50),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54,
                                              blurRadius: 5.0,
                                              offset: Offset(0.0, 0.75)
                                          )
                                        ]
                                    ),
                                    child: Row(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.all(8.5),
                                              child: CircleAvatar(
                                                  backgroundImage: NetworkImage("https://static.tuasaude.com/media/article/mi/tu/catuaba_25974_l.jpg")
                                              )
                                          ),
                                          Text(
                                              "Catuába",
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.black45
                                              )
                                          ),
                                          SizedBox(width: 6),
                                          Icon(Icons.star_rounded, color: Colors.amber)
                                        ]
                                    ),
                                  )
                              ),
                            ]
                        )
                      ]
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Login())
                        );
                      },
                      child: Text("Sair da Conta", style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(115, 10, 14, 1),
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }
}