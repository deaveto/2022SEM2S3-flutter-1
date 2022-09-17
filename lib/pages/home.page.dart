import 'package:flutter/material.dart';

import '../providers/articulos.provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AticuloProvider articuloProvider = AticuloProvider();

  @override
  void initState() {
    var respuesta = articuloProvider.obtenerArticulos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text("Noticias"),
        ),
      ),
    );
  }
}
