import 'package:flutter/material.dart';

class ItemFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color.fromRGBO(176, 190, 193, 50), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                child: Column(children: [
                  Row(
                    children: [
                      SizedBox(width: 12),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(image: NetworkImage('https://www.revistagula.com.br/uploads/punheta_de_bacalhau_academia_da_gula_spcb_foto_leo_feltran_002.jpg'), width: 279, height: 157)),
                      ),
                      Column(children: [
                        Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                            child: Icon(Icons.star_border_rounded, color: Colors.black38,)), SizedBox(height: 10),
                        Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                            child: Padding(
                              padding: const EdgeInsets.all(3.75),
                              child: Icon(Icons.insert_comment_outlined, color: Colors.black38, size: 17),
                            )), SizedBox(height: 10),
                        Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                            child: Padding(
                              padding: const EdgeInsets.all(3.75),
                              child: Icon(Icons.share_outlined, color: Colors.black38, size: 17),
                            )), SizedBox(height: 10),
                      ])
                    ],
                  ),
                  Text('Punheta de Bacalhau', style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text("A Punheta de Bacalhau é uma típica receita portuguesa que pode parecer intrigante pelo nome, mas seu sabor é inegavelmente delicioso. Acompanhada de pão torrado, a punheta de bacalhau é um tradicional tira-gosto.",
                        textAlign: TextAlign.justify, style: TextStyle(color: Colors.black54)),
                  ),
                ]),
              )),
        ]);
  }
}

class ItemFeed1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color.fromRGBO(176, 190, 193, 50), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(image: NetworkImage('https://s2-receitas.glbimg.com/VanEzvZPueVdtzf5hPKuL1ChhbY=/696x390/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/9/l/S2tdbpT6StIdluWAXdqQ/churros-recheado-receita.jpg'), width: 279, height: 157)),
                  ),
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Icon(Icons.star_border_rounded, color: Colors.black38,)), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.insert_comment_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.share_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                  ])
                ],
              ),
              Text('Porra Recheada', style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("A Porra Recheada é uma deliciosa sobremesa espanhola que conquistou o mundo. Esses palitos de massa frita são crocantes por fora, macios por dentro e têm um sabor irresistível. Acompanhados de uma calda de chocolate derretido, são perfeitos para qualquer ocasião.",
                    textAlign: TextAlign.justify, style: TextStyle(color: Colors.black54)),
              ),
            ]),
          )),
    ]);
  }
}

class ItemFeed2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color.fromRGBO(176, 190, 193, 50), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(image: NetworkImage('https://www.vaqueiro.pt/-/media/Project/Upfield/Whitelabels/Vaqueiro-PT/Assets/Recipes/sync-images/53db2f6e-be82-40c2-a1b0-7b5d0f256560.jpg'), width: 279, height: 157)),
                  ),
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Icon(Icons.star_border_rounded, color: Colors.black38,)), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.insert_comment_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.share_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                  ])
                ],
              ),
              Text('Arroz de Grelos', style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("O arroz de grelos é um prato clássico da cozinha portuguesa, conhecido pela sua textura soltinha e sabor marcante. É uma excelente opção para acompanhar peixes fritos ou assados.",
                    textAlign: TextAlign.justify, style: TextStyle(color: Colors.black54)),
              ),
            ]),
          )),
    ]);
  }
}

class ItemFeed3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color.fromRGBO(176, 190, 193, 50), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(image: NetworkImage('https://images01.brasildefato.com.br/1cae14db3043c10ec8b422571a1e5277.jpeg'), width: 279, height: 157)),
                  ),
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Icon(Icons.star_rounded, color: Colors.amber,)), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.insert_comment_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: Color.fromRGBO(176, 190, 193, 1), boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.75))]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.75),
                          child: Icon(Icons.share_outlined, color: Colors.black38, size: 17),
                        )), SizedBox(height: 10),
                  ])
                ],
              ),
              Text('Chá de Boldo', style: TextStyle(fontSize: 26, color: Colors.black54, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("O chá de boldo é uma bebida conhecida por seus benefícios digestivos e propriedades medicinais. Originário da América do Sul, o boldo é uma planta amplamente utilizada para tratar problemas do fígado e do sistema digestivo.",
                    textAlign: TextAlign.justify, style: TextStyle(color: Colors.black54)),
              ),
            ]),
          )),
    ]);
  }
}
