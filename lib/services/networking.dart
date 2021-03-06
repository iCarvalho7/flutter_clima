import 'dart:convert';
import 'package:http/http.dart' as http;

class NetWorkHelper{

  NetWorkHelper(this.apiUrl);

  final String apiUrl;

  Future getData()async {
    http.Response response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
      print(response.body);
    }
  }
}