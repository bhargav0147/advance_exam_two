import 'package:flutter/material.dart';

class WinScreen extends StatefulWidget {
  const WinScreen({Key? key}) : super(key: key);

  @override
  State<WinScreen> createState() => _WinScreenState();
}

class _WinScreenState extends State<WinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Winner",style: TextStyle(letterSpacing: 1,fontSize: 20),),
          ),
      body: Center(
        child: Image.network(
          "https://cdn-icons-png.flaticon.com/256/4545/4545082.png",
          height: 400,
          width: 400,
        ),
      ),
    ));
  }
}
