import 'package:flutter/material.dart';

class Telamenu extends StatelessWidget {
  const Telamenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu do app de mapas'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // o padding fará com que os botões esticados não encostem no canto da tela
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch, // o stretch fará com que todos os botões fiquem esticados com uma maior largura
          children: <Widget>[


            const Icon(

                Icons.add_location_alt_outlined,
                size: 120.0,
                color: Colors.purpleAccent,
            ),

            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),

            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),


            ElevatedButton( // este botão será responsável por levar para a página do contador de cliques
              child: const Text('Primeiro mapa'),
              onPressed: () {
                Navigator.pushNamed(context, '/primeiromapa');
              },
            ),

            ElevatedButton( // este botão será responsável por levar para a página de cadastro de usuarios
              child: const Text('Segundo mapa'),
              onPressed: () {
                Navigator.pushNamed(context, '/segundomapa');
              },
            ),

            ElevatedButton( // este botão será responsável por levar para a página de cadastro de produtos

              child: const Text('Terceiro mapa'),
              onPressed: () {
                Navigator.pushNamed(context, '/terceiromapa');
              },
            ),
          ],
        ),
      ),
    );
  }
}
