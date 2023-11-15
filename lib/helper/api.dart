import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class API{
  Future<dynamic> get({required String url}) async
  {
    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == 200)
      {
        return jsonDecode(response.body);
      }
    else{
      throw Exception("There Is A Problem With Status Code ${response.statusCode}");
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token
}) async{
    Map<String,String> headers = {};

    if(token != null)
      {
        headers.addAll({
          "Authorization" : "Bearer $token"
        });
      }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers
    );

    if(response.statusCode == 200)
      {
        Map<String,dynamic> data = jsonDecode(response.body);
        return data;
      }
    else
      {
        throw Exception("There Is A Problem With Status Code ${response.statusCode} With Body ${jsonDecode(response.body)}");
      }
}

}