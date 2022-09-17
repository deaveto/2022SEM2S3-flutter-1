import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:newnoticias/windgets/card.windget.dart';

import '../providers/articulos.provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AticuloProvider articuloProvider = AticuloProvider();
  late Future<List<ArticuloModels>> articulos;

  @override
  void initState() {
    articulos = articuloProvider.obtenerArticulos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Noticias")),
      body: FutureBuilder(
          future: articulos,
          builder: ((context, snapshot) {
            List<Widget> lista = [];

            if (snapshot.hasData) {
              snapshot.data?.forEach(
                  (element) => lista.add(CartWinget(articulo: element)));
              return ListView(
                children: lista,
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          })),
    );
  }
}
