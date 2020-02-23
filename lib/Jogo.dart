import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget{
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo>{

  var _imagemApp = AssetImage("assets/padrao.png");
  
void _opcaoSelecionada(String escolhaDoUsuario){
  var opcoes = ["pedra", "tesoura", "papel"];
  var numero = Random().nextInt(3);
  var escolhaApp = opcoes[numero];

  //exibição da imagem escolhida pelo App

  switch( escolhaApp ){
    case "pedra":
      setState(() {
        this._imagemApp = AssetImage("assets/pedra.png");
      });
      break;
    case "tesoura":
      setState(() {
        this._imagemApp = AssetImage("assets/tesoura.png");
      });
      break;
    case "papel":
      setState(() {
        this._imagemApp = AssetImage("assets/papel.png");
      });
      break;
  }

}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo")
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 32, bottom: 16,
            ),
            child: Text("Escolha do App: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),  
          ),
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Image(image: _imagemApp,), 
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 32, bottom: 16,
            ),
            child: Text("Resultado: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),  
          ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20, left: 10, right: 10,
            ),
            child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("papel"),
                      child: Image.asset("assets/papel.png", width: 100, height: 100,), 
                    ),
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("pedra"),
                      child: Image.asset("assets/pedra.png", width: 100, height: 100,), 
                    ),
                    GestureDetector(
                      onTap: () => _opcaoSelecionada("tesoura"),
                      child: Image.asset("assets/tesoura.png", width: 100, height: 100,), 
                    ),
                  ],
                ),
            ),

        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}