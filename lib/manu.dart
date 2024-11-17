import 'package:flutter/material.dart';

class ManuPage extends StatelessWidget {
  const ManuPage({super.key});

final String opa = 
'Parece que você esta tentando\n'
'conseguir o conhecimento absoluto.\n\n'
'Lembre-se que é difícil aprender\n'
'mas no final vale a pena.\n';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 73, 91, 231),
        body: Center(
          child: Column(children: <Widget>[
            Container(
            height: 500,
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
                
                
                )),

              const Positioned(
                left: 58,
                child: Text('Ops... :(', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                )
              ),),

              Positioned(
                top: 70,
                left: 60,
                child: Text(opa, 
                style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                )
              ),),

              const Positioned(
                height: 200,
                width: 200,
                top: 140,
                left: 60,
                child: Image(image: AssetImage("img/ops.png"),
                fit: BoxFit.cover,
                ))
            ],)  
          ),
          ],),
        ),
      )

    );
  }
}