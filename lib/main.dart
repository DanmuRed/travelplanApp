import 'package:flutter/material.dart';
import 'package:travel_plan_app/design.dart';
import 'package:travel_plan_app/ui/main_screen_stack/first_page.dart';
import 'package:travel_plan_app/ui/main_screen_stack/second_page.dart';
import 'package:travel_plan_app/ui/main_screen_stack/third_page.dart';

final bodyItem = [const FirstPage(), const SecondPage(), const ThirdPage()];

final List<Widget> bottomNavBarItem = [
  const Icon(Icons.corporate_fare, size: 20, color: Color(0xff94938F)),
  const Icon(Icons.stay_current_portrait_rounded,
      size: 20, color: Color(0xff94938F)),
  const Icon(Icons.catching_pokemon, size: 20, color: Color(0xff94938F)),
];

final List<Widget> selectNavItem = [
  const Icon(Icons.corporate_fare, size: 20, color: Color(0xff838826)),
  const Icon(Icons.stay_current_portrait_rounded,
      size: 20, color: Color(0xff838826)),
  const Icon(Icons.catching_pokemon, size: 20, color: Color(0xff838826)),
];

void main() {
  runApp(const TravelPlanApp());
}

class TravelPlanApp extends StatelessWidget {
  const TravelPlanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppDesign.appTheme,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: bodyItem,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
            bottomNavBarItem.length,
            (index) => BottomNavigationBarItem(
                label: _bottomNavLabel(index),
                icon: index == currentIndex
                    ? selectNavItem[index]
                    : bottomNavBarItem[index])),
      ),
    );
  }

  String _bottomNavLabel(int index) {
    switch (index) {
      case 0:
        return '1번탭';
      case 1:
        return '2번탭';
      case 2:
        return '3번탭';

      default:
        return '2번탭';
    }
  }
}
