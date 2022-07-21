import 'package:flutter/material.dart';

class AppDesign {
  static final appTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
          backgroundColor: Colors.lightGreen,
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey),
      primaryColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: Colors.white);
}

class BodyTextLight extends StatelessWidget {
  final double size;
  final String string;
  final Color color;

  const BodyTextLight(
      {required this.string, required this.size, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
        style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: FontWeight.w300,
            fontFamily: 'DefaultFont'));
  }
}

// ignore: must_be_immutable
class BodyTextRegular extends StatelessWidget {
  double size;
  String string;
  Color? color;
  int? maxLines;
  TextAlign? textAlign;
  TextOverflow? textOverflow;

  BodyTextRegular(
      {required this.string,
      required this.size,
      this.color,
      this.maxLines,
      this.textAlign,
      this.textOverflow,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
        maxLines: maxLines,
        overflow: textOverflow,
        textAlign: textAlign,
        style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: FontWeight.w400,
            fontFamily: 'DefaultFont'));
  }
}

// ignore: must_be_immutable
class BodyTextMedium extends StatelessWidget {
  double size;
  String string;
  Color? color;
  int? maxLines;
  bool? lineThrough;
  bool? underLine;
  TextAlign? textAlign;

  BodyTextMedium(
      {required this.string,
      required this.size,
      this.color,
      this.maxLines,
      this.lineThrough,
      this.underLine,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
            fontSize: size,
            color: color,
            decoration: lineThrough == true
                ? TextDecoration.lineThrough
                : underLine == true
                    ? TextDecoration.underline
                    : null,
            fontWeight: FontWeight.w500,
            fontFamily: 'DefaultFont'));
  }
}

// ignore: must_be_immutable
class BodyTextBold extends StatelessWidget {
  double size;
  String string;
  Color? color;
  int? maxLines;
  TextAlign? textAlign;
  TextOverflow? overflow;
  bool? softWrap;
  List<Shadow>? textShadow;

  BodyTextBold(
      {required this.string,
      required this.size,
      this.color,
      this.maxLines,
      this.textAlign,
      this.overflow,
      this.softWrap,
      this.textShadow,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        softWrap: softWrap,
        style: TextStyle(
            fontSize: size,
            shadows: textShadow,
            color: color,
            fontWeight: FontWeight.w700,
            fontFamily: 'DefaultFont'));
  }
}
