import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key); //as keys servem para realizar controle de estado dos elementos da classe
  //geralmente telas principais vao como stateless widgets e widgets propriamente vão como statefull widgets
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> _cidades = [
    "Aracaju",
    "Belém",
    "Belo Horizonte",
    "Boa Vista",
    "Campo Grande",
    "Cuiaba",
    "Curitiba",
    "Florianópolis",
    "Fortaleza",
    "Goiânia",
    "João Pessoa",
    "Macapá",
    "Maceió",
    "Manaus",
    "Natal",
    "Palmas",
    "Porto Alegre",
    "Porto Velho",
    "Recife",
    "Rio Branco",
    "Rio de Janeiro",
    "Salvador",
    "São Luís",
    "São Paulo",
    "Teresina",
    "Vitória"
  ];

  String _cidadeSelecionada = "São Paulo";

  @override
  Widget build(BuildContext context) {

    //para descobrir o tamanho do appbar
    double heitgh = MediaQuery.of(context).size.height; // para pegar o tamanho da tela
    var padding = MediaQuery.of(context).padding; // padding na tela

    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownSearch<String>(
              mode: Mode.MENU,
              items: _cidades,
              showSelectedItems: true,
              showSearchBox: true,
              maxHeight: heitgh - padding.top - 60, //ajusta o componente de acordo com o tamanho da tela
              onChanged: (value) {
                setState(() {
                  _cidadeSelecionada = value!; // o valor não pode ser nulo
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
