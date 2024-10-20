import 'package:flutter/material.dart';
import 'package:washi/manu.dart';
import 'package:washi/matematica.dart';


class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 212, 0),
        body: Center(child: 
        Column( 
          children: <Widget>[
          Container(
            height: 200,
            width: 500,
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: 
            const Stack(children: 
            <Widget>[
              Positioned(
              top: 23,
              left: 100,
              child: Text('GÊNIO',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 54,
              ),
              )), 
              Positioned(
                left: 100,
                child: Text('CRIANDO UM', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
                )
              ),),

              Positioned(
                top: 110,
                left: 75,
                child: Text('Versão MVP do App', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 25,
                )
              ),),
            ],)  
          ),

          Expanded(
            child: Container(
              width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                  top: 20,
                  left: 35,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ManuPage())
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 99, 0, 211),
                        boxShadow: const [BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          spreadRadius: -5,
                          blurRadius: 7,
                          offset: Offset(0,8)
                        )]  
                      ),
                    child: 
                    const Text('Em manutenção',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                    ),
                  )),

                  Positioned(
                  top: 110,
                  left: 35,
                  child: 
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const Matematica())
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 110, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 231, 78, 132),
                        boxShadow: const [BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          spreadRadius: -3,
                          blurRadius: 7,
                          offset: Offset(0,8)
                        )]  
                      ),
                    child: 
                    const Text('Matematica',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),),
                    ),
                  )),

                  Positioned(
                  top: 290,
                  left: 35,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ManuPage())
                      );
                    },
                    child: Container(
                      height: 150,
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 110, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 0, 97, 16),
                        boxShadow: const [BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          spreadRadius: -3,
                          blurRadius: 7,
                          offset: Offset(0,8)
                        )]  
                      ),
                    child: 
                    const Text('Fisica',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),),
                    ),
                  ))
                ],
              )
            ),
          )
        ],
        ),
        ),
      );
  }
}