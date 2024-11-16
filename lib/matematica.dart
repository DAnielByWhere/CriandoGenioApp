import 'package:flutter/material.dart';
import 'package:washi/informativa.dart';
import 'package:washi/lista.dart';

class Matematica extends StatefulWidget {
  const Matematica({super.key});

  @override
  State<Matematica> createState() => _MatematicaState();
}



class _MatematicaState extends State<Matematica> {

  List<Modulo> modulos = <Modulo>[

    Modulo(1, "Aritmetica", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "Vai na fé", Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a")),

  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 78, 132),
        body: Center(child: 
        Column( 
          children: <Widget>[
          Container(
            height: 200,
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
                child: Text('MATEMATICA', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                )
              ),),
            ],)  
          ),

          Expanded(
            child: Container(
              width: 500,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: ListView.builder(
                itemCount: modulos.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    color: const Color.fromARGB(255, 231, 78, 132),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 24.0,
                              )
                            ),

                            Text(
                              modulos[index].Nome,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),

                      onTap: () => Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const Informativa(),
                          settings: RouteSettings(arguments: modulos[index]),
                          )
                        ),
                    ),
                  );
                } 
                
                )
            ),
          )
        ],
        ),
        ),
      )
    );
  }
}