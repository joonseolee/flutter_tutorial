import 'dart:convert';
import 'dart:developer';
import 'dart:io';

var http = HttpClient();
const dotCom = '.com';

Future<dynamic> get(String url) async {
  HttpClientRequest request = await http.getUrl(Uri.parse(url));

  return _resolve(request);
}

Future<dynamic> post(String url, {body}) async {
  HttpClientRequest request = await http.postUrl(Uri.parse(url));
  request.write(body);

  return _resolve(request);
}

Future<dynamic> put(String url, {body}) async {
  HttpClientRequest request = await http.putUrl(Uri.parse(url));
  request.write(body);

  return _resolve(request);
}

Future<dynamic> delete(String url) async {
  HttpClientRequest request = await http.deleteUrl(Uri.parse(url));

  return _resolve(request);
}

Future<dynamic> _resolve(HttpClientRequest request) async {
  var jsonObject;
  try {
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    jsonObject = jsonDecode(stringData);
  } on Exception catch (e) {
    log('please come here');
    log(e.toString());
  }
  return jsonObject;
}
