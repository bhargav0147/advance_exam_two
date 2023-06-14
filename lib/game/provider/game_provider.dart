import 'package:advance_exam_two/game/modal/game_modal.dart';
import 'package:advance_exam_two/utils/api_helper.dart';
import 'package:flutter/foundation.dart';

class GameProvider extends ChangeNotifier
{


  GameModal? modal;
  Future<GameModal> getJson()
  async {
    modal = await ApiHelper.apiHelper.getData();
    return modal!;

  }

  int stepperindex=0;
  void addstepperindex()
  {
    if(stepperindex<9)
    {
      stepperindex+=1;
    }
    notifyListeners();
  }
  void minusstepperindex()
  {
   stepperindex=0;
    notifyListeners();
  }
}