import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'model.dart';

class NetworkService {
  Future<List<Post>> fetch() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');
    List<Post> list = [];

    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List;

      for (var element in jsonResponse) {
        list.add(Post.fromJson(element));
      }

      print('Request fulfilled successfully!: $list');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return list;
  }
}
