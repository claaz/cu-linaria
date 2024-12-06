import 'package:flutter/material.dart';
import 'item_feed.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView(children: [
            ItemFeed(),
            ItemFeed1(),
            ItemFeed2(),
            ItemFeed3(),
          ],
          )),
      ],
    );
  }
}