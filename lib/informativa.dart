// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:washi/lista.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

_launchURL(Uri url) async {
    if(!await launchUrl(url)) {
      throw Exception('Não foi possivel acessar o site');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final modulos = ModalRoute.of(context)!.settings.arguments as Modulo;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(40, 40, 40, 100),
        body: Center(child: 
        ListView(
          children: <Widget>[
            Column(
          children: <Widget>[
            Container(
            height: 130,
            width: 500,
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: 
             Stack(children: 
            <Widget>[ 
              Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: (){
                  Navigator.pop(context);
                }, 
                icon: const Icon(Icons.arrow_back),
                
                
                )
                ),

              Positioned(
                left: 70,
                top: 15,
                child: Text(modulos.Nome, 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                )
              ),
              ),

              
            ],
            )  
          ),

          SizedBox(
            width: 300,
            height: 450,
            child: Stack(
              children: <Widget>[

                Positioned(
                  left: 110,
                  child: Text('vídeos', 
                    style: 
                      TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                  ),
                ),

                Positioned(
                  top: 60,
                  child: 
                  GestureDetector(
                    onTap: () {
                      _launchURL(modulos.Link1);
                    },
                    child: Container(
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 33, 105, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    
                      child: Text('vídeo 1', 
                      style: 
                        TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
                
                Positioned(
                  top: 150,
                  child: 
                  GestureDetector(
                    onTap: () {
                      _launchURL(modulos.Link2);
                    },
                    child: Container(
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 33, 105, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    
                      child: Text('vídeo 2', 
                      style: 
                        TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 240,
                  child: 
                  GestureDetector(
                    onTap: () {
                      _launchURL(modulos.Link3);
                    },
                    child: Container(
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 33, 105, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    
                      child: Text('vídeo 3', 
                      style: 
                        TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 330,
                  child: 
                  GestureDetector(
                    onTap: () {
                      _launchURL(modulos.Link4);
                    },
                    child: Container(
                      width: 300,
                      height: 70,
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 33, 105, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    
                      child: Text('vídeo 4', 
                      style: 
                        TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
            ],
            ),
          ),

          SizedBox(
            height: 700,
            width: 400,
            child: Stack(
              children: 
                <Widget>[

                  Positioned(
                  left: 135,
                  child: Text('Detalhes', 
                    style: 
                      TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),

                  Positioned(
                    top: 40,
                    left: 30,
                    child: 
                      SizedBox(
                        width: 330,
                        child: Text(modulos.Det,
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                      ),
                  ),
                ],
              ),
          ),

          SizedBox(
              height: 50,
            ),

          Container(
              height: 600,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(230, 33, 105, 1),
              ),
              child: Stack(
                children: <Widget>[

                  Positioned(
                  top: 20,
                  left: 128,
                  child: Text('Dica', 
                    style: 
                      TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),

                  Positioned(
                    top: 60,
                    left: 37,
                    child: 
                      SizedBox(
                        width: 230,
                        child: Text(modulos.Dica,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                      ),
                  ),
                ],
              ),
            ),



            SizedBox(
              height: 50,
            )

          ],


        ),
          ],
        ),
        )
        ),
      );
  }
}