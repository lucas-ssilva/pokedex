import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/src/models/pokemon.dart';


class HomePageState extends State<HomePage> {
  
    final List<dynamic> pokemons = [
    {
      'name': 'Bulbassauro',
      'img': 'lib/assets/001.png',
      'type': ['lib/assets/grass.png', 'lib/assets/poison.png']
    },
    {
      'name': 'Clefairy',
      'img': 'lib/assets/clefairy.png',
      'type': ['lib/assets/fairy.png']
    }
  ];

  bool exibirLista = true;

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(children: [
                  Image.asset(
                    'lib/assets/rotom.jpg',
                  ),
                  Image.asset('lib/assets/poke.png', height: 200, width: 200,)
                  ],)
,
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'lib/assets/pokeball.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.red,
                            width: 1,
                          )),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.red,
                            width: 1,
                          )),
                          border: const OutlineInputBorder(),
                          labelText: "Nome ou número",
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Column(children: [
              for (var item in pokemons)
                Card(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Image.asset(
                        item['img'],
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var types in item['type'])
                            Image.asset(
                              types,
                              width: 10,
                              height: 10,
                            ),
                          Text(
                            ' ' + item['name'],
                            style: GoogleFonts.getFont('Lato'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

@override
  HomePageState createState() {
  return HomePageState();
}

}
