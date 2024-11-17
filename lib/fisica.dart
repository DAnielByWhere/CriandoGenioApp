import 'package:flutter/material.dart';
import 'package:washi/informativaf.dart';
import 'package:washi/lista.dart';

class Fisica extends StatefulWidget {
  const Fisica({super.key});

  @override
  State<Fisica> createState() => _FisicaState();
}

const cine = 
'MRU:\n\n'
'Velocidade média:\n'
'v=ΔS/Δt\n\n'
'Posição:\n'
'S=S0+v⋅t';

const dina = 
'Força e Movimento:\n'
'F=m⋅a';

const termo = 
'1º Lei Termodinâmica:\n'
'ΔU=Q-W\n\n'
'2º Lei Termodinâmica:\n'
'ΔS=Qrev/T\n\n'
'Equação geral dos Gases:\n'
'pV = nRT\n\n'
'Dilatação Termica:\n'
'ΔL=L0⋅a⋅ΔT';

class _FisicaState extends State<Fisica> {


  List<Modulo> modulos = <Modulo>[
    Modulo(1, "Cinemática", "A cinemática é a parte da física que estuda o movimento dos corpos, sem se preocupar com as causas desse movimento. Ela descreve o movimento através de grandezas como posição, velocidade e aceleração, analisando como essas grandezas variam ao longo do tempo. A cinemática pode ser aplicada a diferentes tipos de movimento, como o movimento retilíneo (em linha reta) e o movimento curvilíneo (em trajetórias curvas). As equações cinemáticas permitem prever a posição e a velocidade de um corpo em função do tempo, e são essenciais para entender fenômenos do cotidiano, como o movimento de carros, planetas e outros objetos.", cine, Uri.parse("https://youtu.be/kbaN17Z41ZM?si=6mxHlxGkWSvNBpJT"), Uri.parse("https://youtu.be/D6gB4jnx9Wc?si=xJHZdNagWUR82bwp"), Uri.parse("https://youtu.be/AnOKxNhpRPo?si=XlKG8dSjYQIMIuFp"), Uri.parse("https://youtube.com/playlist?list=PLzjR7HXQnrceNJ2pUl9afkCMkTubbvCbz&si=sUq76S8ITnKuQQaa")),

    Modulo(2, 'Dinâmica', 'A dinâmica é a parte da física que estuda as forças e os efeitos que elas causam no movimento dos corpos. Ela se preocupa com as causas dos movimentos, ao contrário da cinemática, que apenas descreve o movimento. A dinâmica é baseada na Lei de Newton, que relaciona a força com a massa e a aceleração. A dinâmica também aborda conceitos como trabalho, energia, impulsão e momento, e é crucial para entender desde o movimento de objetos cotidianos até fenômenos mais complexos, como o movimento de planetas e a interação de partículas subatômicas.', dina, Uri.parse('https://youtu.be/cM4_lZYbNR4?si=xSO9rFgpqxBkLuM1'),Uri.parse('https://youtube.com/playlist?list=PLzjR7HXQnrcdJSrrM2DbJ-LHuFwRR31Uc&si=mF50XyYRm9bq8ra3'),Uri.parse('https://youtu.be/fOt5-VKI5JI?si=iQLiSGkLR7hplmWJ'),Uri.parse('https://youtube.com/playlist?list=PLzjR7HXQnrcd5texPyBTomAFef7oN2Bd0&si=JmX-PKgTcnro5eth')),

    Modulo(3, 'Termodinâmica', 'A termodinâmica é a área da física que estuda as relações entre calor, trabalho e energia, além das leis que governam as transformações de energia em sistemas. Ela examina como a energia se move e se converte entre diferentes formas, e como os sistemas respondem a essas mudanças, com foco no equilíbrio térmico, eficiência dos processos e comportamento da matéria em diferentes condições de temperatura e pressão.', termo, Uri.parse('https://youtu.be/GYxXCr6HXcw?si=dlyQmP-FXDucsLuO'),Uri.parse('https://youtu.be/U_2AJc1mcas?si=DThYZyxnAh3VVRuO'),Uri.parse('https://youtube.com/playlist?list=PLNfWNKz4iEr-nbf3fH3DcHVvGsqAcZin_&si=wjt_aKJ65pMreyQO'),Uri.parse('https://youtube.com/playlist?list=PLzjR7HXQnrccNvQPKqmf5DIgHIB2gEtv8&si=gi1-Sn8P0EmqWNQ5')),

    Modulo(4, "Óptica", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(5, "Ondas", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(6, "Eletromagnetismo", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(7, "Hidrostática", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),
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