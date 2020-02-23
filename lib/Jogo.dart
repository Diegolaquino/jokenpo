import 'package:flutter/material.dart';

class Jogo extends StatefulWidget{
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo>{
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
            child: Image.asset("assets/papel.png", width: 20,), 
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
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/papel.png"), 
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/pedra.png"), 
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/tesoura.png"), 
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