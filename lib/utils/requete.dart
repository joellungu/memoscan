import 'dart:io';

import 'package:get/get.dart';
//import 'package:dio/dio.dart' as d;
//final dio = d.Dio();

class Requete extends GetConnect {
  //
  //static String url = "http://192.168.100.27:8080"; //192.168.100.27
  static String url = "http://10.0.2.2:8080"; //
  //static String url = "http://192.168.100.134:8080"; //192.168.100.134
  //static String url =
  //    Platform.isAndroid ? "http://10.0.2.2:8080" : "http://localhost:8080";
  //static String url = "https://ksij-kinshasa-9b935a831929.herokuapp.com";

  //
  Future<Response> getE(String path) async {
    print("je suis appelé getE: $url/$path");
    return get("$url/$path");
  }

  Future<Response> postE(String path, var e) async {
    print("je suis appelé postE: $url/$path");
    return post("$url/$path", e);
  }

  Future<Response> putE(String path, var e) async {
    print("je suis appelé putE:$url/$path ");
    return put("$url/$path", e);
  }

  Future<Response> deleteE(String path) async {
    print("je suis appelé deleteE: $url/$path");
    return delete("$url/$path");
  }
}
