import 'package:flutter/material.dart';
import 'package:learning/Favourites/favourites_1.dart';
import 'package:learning/Home/page_1.dart';
import 'package:learning/Profile/profilePage.dart';
import 'package:learning/bottomNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.black, primarySwatch: Colors.yellow),
      home: const MyHomePage(),
    );
  }
}

var indexClicked = 0;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Favourite(
        getStarted: () {
          setState(() {
            indexClicked = 1;
          });
          Navigator.canPop(context);
        },
      ),
      const HomePage(),
      const ProfilePage(),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigation(
          tap: (value) {
            setState(() {
              indexClicked = value;
            });
          },
          index: indexClicked,
        ),
        body: pages[indexClicked]);
  }
}
