import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:travel_plan_app/design.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: BodyTextRegular(
          string: '1번페이지',
          size: 20,
        ),
      ),
    );
  }
}
