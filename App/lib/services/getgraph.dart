import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

abstract class GetData {
  static getGraph() async {
    try {
      var response = await http.get(
          Uri.https("ecotopia-production.eu-gb.cf.appdomain.cloud",
              "user/data/Ramesh"),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoyfSwiaWF0IjoxNjI0MDM0MzA5fQ.NNMNM3hZtdxketZkfn5Wc-JCeBCMc5bBgtgrT-ND_MU',
          });
      var data = jsonDecode(response.body);
      return data;
    } catch (e) {
      print(e);
    }
  }
}
