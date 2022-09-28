import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:newnoticias/pages/detalle.page.dart';

class CartWinget extends StatelessWidget {
  CartWinget({super.key, required this.articulo});
  ArticuloModels articulo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetallePage(
                        articulo: articulo,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(206, 255, 255, 255),
              ],
            ),
          ),
          child: Column(
            children: [
              articulo.urlToImage == null
                  ? Container(
                      height: 250,
                    )
                  : Image.network(articulo.urlToImage.split('?')[0]),
              SizedBox(height: 12),
              Text(
                articulo.title,
                maxLines: 3,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(articulo.description ?? '', maxLines: 2),
              SizedBox(height: 16),
              Text(
                  "Auto: " +
                          articulo.author +
                          "                                Fecha: " +
                          articulo.publishedAt.split('T')[0] ??
                      '',
                  maxLines: 3),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
