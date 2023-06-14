import 'dart:convert';

import 'package:advance_exam_two/game/modal/game_modal.dart';
import 'package:http/http.dart' as http;
class ApiHelper
{
  static ApiHelper apiHelper = ApiHelper();
  GameModal modal = GameModal();

  String apiLink="https://opentdb.com/api.php?amount=10&category=27&difficulty=medium&type=multiple";

  Future<GameModal> getData()
  async {
    var response =await http.get(Uri.parse(apiLink));
    var json = jsonDecode(response.body);
    modal = GameModal.fromJson(json);
    print(response.body);
    return modal;
  }
}