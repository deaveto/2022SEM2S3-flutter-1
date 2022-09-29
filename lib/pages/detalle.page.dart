import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.articulo});

  ArticuloModels articulo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(articulo.title)),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(135, 240, 39, 39),
              Color.fromARGB(255, 134, 33, 180),
              Color.fromARGB(255, 2, 0, 94),
            ],
          ),
        ),
        height: 550,
        child: Column(
          children: [
            articulo.urlToImage == null
                ? Container(
                    color: Colors.red,
                    height: 200,
                  )
                : Image.network(articulo.urlToImage.split('?')[0]),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(articulo.description ?? '', maxLines: 10),
                    SizedBox(height: 8),
                    Text(articulo.content ?? '', maxLines: 10),
                    SizedBox(height: 8),
                    Text("Autor: " + articulo.author ?? '', maxLines: 3),
                    SizedBox(height: 8),
                    Text(articulo.publishedAt.split('T')[0] ?? '', maxLines: 3),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                launch(articulo.url);
              },
              child: Text('More details'),
            ),
          ],
        ),
      ),
    );
  }
}
