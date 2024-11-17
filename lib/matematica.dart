import 'package:flutter/material.dart';
import 'package:washi/informativa.dart';
import 'package:washi/lista.dart';

class Matematica extends StatefulWidget {
  const Matematica({super.key});

  @override
  State<Matematica> createState() => _MatematicaState();
}

const ari = 
'Propriedade Distributiva\n'
'a(b+c)=ab+ac\n\n'
'Equação Linear:\n'
'y=mx+b\n\n'
'Equação quadrática:\n'
'ax²+bx+c=0\n\n'
'Resolvida usando Bhaskara:\n'
'x = -b ± √(b² – 4ac)/ 2a\n\n'
'Fatoração:\n'
'(a+b)²=a²+2ab+b²\n'
'(a-b)²=a²-2ab+b²\n'
'a²-b²=(a+b)(a-b)';

const geo = 
'Perímetro e Área:\n'
'Retangulo:\n'
'P=2(b+h)\n'
'A=b⋅h\n\n'
'Triângulo:\n'
'P=a+b+c\n'
'A=b⋅h/2\n\n'
'Circunferência:\n'
'P=2πr\n'
'A=πr²'
;

const pita = 
'Teorema de Pitagoras:\n'
'c²=a²+b²';

const cos = 
'Lei dos Senos:\n'
'a/sin(A) = b/sin(B) = c/sin(C)\n\n'
'Lei dos Cossenos\n'
'c²=a²+b²-2ab⋅cosC'
;

const geoesp = 
'Volume de Solidos:\n\n'
'Cubo:V=a³\n\n'
'Paralelepípedo:\n'
'V=a⋅b⋅h\n\n'
'Cilindro:\n'
'V=πr²h\n\n'
'Cone:\n'
'V=πr²h/3\n\n'
'Esfera:\n'
'V=4/3πr³';


class _MatematicaState extends State<Matematica> {

  List<Modulo> modulos = <Modulo>[

    Modulo(1, "Aritmetica", "Álgebra é uma área da matemática que utiliza letras e símbolos para representar números e operações, permitindo resolver problemas de forma generalizada. Ela trabalha com variáveis, que representam valores desconhecidos ou que podem mudar, e com expressões algébricas, que combinam números, variáveis e operações. Além disso, envolve o uso de equações, que são igualdades matemáticas usadas para encontrar valores de variáveis, e sistemas de equações, onde várias equações são resolvidas simultaneamente. Por meio de regras e propriedades como a distributiva, a álgebra simplifica cálculos e tem ampla aplicação em diversas áreas, como ciências, engenharia e economia", ari, Uri.parse("https://youtu.be/8NNA-8rimNs?si=G2iKlTP6IIiA-KJF"), Uri.parse("https://youtu.be/i7MZpiRht2E?si=4QlC37eVfbbMSRkS"), Uri.parse("https://youtube.com/playlist?list=PL83s8LGM84J41-Pa1_KNviiKyqsGq7stB&si=BVgh6mJebqjBcRnw"), Uri.parse("https://youtu.be/LTx-Jd7pyZ8?si=5Xr6-8ufaxGEfTd7")),

    Modulo(2, "Geometria Plana", "Geometria plana é a área da matemática que estuda figuras bidimensionais, como pontos, linhas, ângulos e polígonos, em superfícies planas. Ela analisa as propriedades, medidas e relações entre essas figuras, como perímetro, área e ângulos internos. Figuras comuns incluem triângulos, quadrados, retângulos, círculos e trapézios. Conceitos como congruência, semelhança e teoremas, como o de Pitágoras, são centrais para resolver problemas. A geometria plana é amplamente usada em situações práticas, como arquitetura, design e engenharia, por lidar com formas que estão em superfícies planas.", geo, Uri.parse("https://youtu.be/EzGf1UEnnsY?si=Pv4aLHGZj4bIzIA_"),Uri.parse("https://youtu.be/th5k6bzSDTA?si=AdlMggAurmdePUfO"),Uri.parse("https://youtu.be/VxNj6Nuhq1o?si=Y83ubqUvaNfvBn2C"), Uri.parse("https://youtube.com/playlist?list=PLaKmzX_hXWkIDr7zA7ANf6gYoLskmQfJs&si=eRT-59vgV2nh2qYd")),

    Modulo(3, "Pitágoras","O Teorema de Pitágoras é um princípio fundamental da geometria que estabelece uma relação entre os lados de um triângulo retângulo. Ele afirma que, em um triângulo com um ângulo de 90°, o quadrado do comprimento da hipotenusa (o lado oposto ao ângulo reto) é igual à soma dos quadrados dos comprimentos dos outros dois lados.", pita, Uri.parse("https://youtu.be/7YeYeL2MjB4?si=iwbxoyIm8a-Igqw6"),Uri.parse("https://youtu.be/fan2ewagFxs?si=90UnVM-5wn_9btUn"),Uri.parse("https://youtu.be/DD06fT-xdtI?si=ogzA34O-k81XrsEk"),Uri.parse("https://youtu.be/RxfPjqXx-g0?si=Wh4KYT8xv5RCOGIy")),

    Modulo(4, "Lei dos Senos e Cossenos", "A Lei dos Senos é uma relação trigonométrica que conecta os lados de um triângulo com os senos de seus ângulos opostos. A Lei dos Senos é especialmente útil para resolver triângulos que não são retângulos, permitindo calcular lados ou ângulos desconhecidos quando se conhece dois ângulos e um lado, ou dois lados e um ângulo oposto. A Lei dos Cossenos é uma relação que conecta os lados de um triângulo com o cosseno de um de seus ângulos. Essa lei é útil para calcular um lado desconhecido quando se conhecem dois lados e o ângulo entre eles, ou para determinar um ângulo quando os três lados são conhecidos. Ela é aplicada tanto em triângulos retângulos quanto em triângulos quaisquer.", cos, Uri.parse("https://youtu.be/Vp3gI7r1pUQ?si=pyDvtfCGSbLJYYF_"), Uri.parse("https://youtu.be/bu42X5qf-BU?si=fT4i8PjliIA-a5mo"), Uri.parse("https://youtu.be/i2wstycAhbo?si=JPeUKX9Y7K9xc5R8"), Uri.parse("https://youtu.be/6f72-ZyiTYw?si=fEJeiZwa4F_PUHjY")),

    Modulo(5, "Geometria Espacial", "A geometria espacial estuda as propriedades e medidas de figuras tridimensionais, como sólidos, superfícies e volumes. Ela analisa formas como cubos, prismas, pirâmides, cilindros, cones e esferas, considerando dimensões como comprimento, largura e altura. Os principais conceitos incluem cálculo de áreas totais, áreas laterais e volumes, além de relações entre vértices, arestas e faces. A geometria espacial é amplamente usada em arquitetura, engenharia e design para resolver problemas práticos relacionados ao espaço tridimensional.", geoesp, Uri.parse('https://youtu.be/zJ0YjUMEfjI?si=qEA5r4t71VIfwnKQ'), Uri.parse('https://youtu.be/Y_gD7S6OkC4?si=ewedcW6eQr-mVUiV'), Uri.parse('https://youtube.com/playlist?list=PLaKmzX_hXWkKgrzaDyk5ftCFn8QjVdOYm&si=eD6NQULW2JZ969VD'), Uri.parse('https://youtube.com/playlist?list=PLEfwqyY2ox87GYPpLcP1kv2Nt9xu0oBTy&si=sl9wG987UrahsR7b')),

    Modulo(6, "Funções", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(7, "Estatística e Probabilidade", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(8, "Matematica Financeira", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

    Modulo(9, "MDS", "a", "a", Uri.parse(''),Uri.parse(''),Uri.parse(''),Uri.parse(''),),

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