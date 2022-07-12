import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resmi_tatiller/model.dart';

class ResmiTatilServis {
  static Future<List<Resmitatiller>?> getTatil() async {
    String url = "https://api.ubilisim.com/resmitatiller/";

    final response = await http.get(Uri.parse(url));
    if (response.body.isNotEmpty) {
      final responseJson = jsonDecode(response.body);
      ResmiTatillerModel tatil = ResmiTatillerModel.fromJson(responseJson);
      return tatil.resmitatiller;
    }

    return null;
  }
}
