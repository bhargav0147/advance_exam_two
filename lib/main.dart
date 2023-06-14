import 'package:advance_exam_two/game/provider/game_provider.dart';
import 'package:advance_exam_two/game/view/home_screen.dart';
import 'package:advance_exam_two/game/view/win_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => ChangeNotifierProvider(
      create: (context) => GameProvider(),
      child: MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const GameHomeScreen(),
          'win': (context) => const WinScreen(),
        },
      ),
    ),
  ));
}
