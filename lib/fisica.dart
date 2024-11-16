import 'package:flutter/material.dart';
import 'package:washi/informativaf.dart';
import 'package:washi/lista.dart';

class Fisica extends StatefulWidget {
  const Fisica({super.key});

  @override
  State<Fisica> createState() => _FisicaState();
}

class _FisicaState extends State<Fisica> {


  List<Modulo> modulos = <Modulo>[
    Modulo(1, "Aritmetica", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "Vai na fé", Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a"), Uri.parse("https://youtu.be/dQw4w9WgXcQ?si=SW3xLeiHFUc_-q6a")),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 97, 16),
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
                left: 130,
                child: Text('FISICA', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                )
              ),),

              const Positioned(
                top: 70,
                left: 60,
                child: Text('Esta pagina ainda esta em construção', 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
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
                    color: const Color.fromARGB(255, 0, 97, 16),
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
                          builder: (context) => const InformativaF(),
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