import 'package:http/http.dart' as http;
import 'package:newnoticias/models/articulo.model.dart';

class AticuloProvider {
  Future<List<ArticuloModels>> obtenerArticulos() async {
    List<ArticuloModels> articulos = [];
    var client = http.Client();
    try {
      Map<String, String> parametros = {
        'q': 'tesla',
        'from': '=2022-08-17',
        'sortBy': 'publishedAt',
        'apiKey': '1b05ee4595d24390b54d0afccdb09976',
        //https://newsapi.org/v2/everything?q=tesla&from=2022-08-17&sortBy=publishedAt&apiKey=1b05ee4595d24390b54d0afccdb09976
      };
      var response = await client
          .get(Uri.https('https://newsapi.org', '/v2/everything', parametros));
      print(response.body);
      return articulos;
    } finally {
      client.close();
    }
  }
}
