import 'package:flutter/material.dart';

import 'package:learning/Home/foodTilePage_1.dart';
import 'package:learning/Home/midTile.dart';
import 'package:learning/dafaults/defaults.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Function foodTile(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
    };
  }

  var indexClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 9.0,
          ),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3.0, 3.0),
                      spreadRadius: 2,
                      blurRadius: 6),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 6,
                      offset: Offset(-3.0, -3.0),
                      spreadRadius: 2),
                ],
                border: Border.all(color: Colors.yellow),
                color: const Color.fromARGB(255, 236, 234, 234),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 20.0,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile 1.jpg'),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.0),
                child: Text(
                  'Let\'s eat ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.0),
                child: Text(
                  'Quality food',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: TextField(
                        cursorColor: const Color.fromARGB(255, 99, 98, 98),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 99, 98, 98)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.black45,
                              )),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black45,
                          ),
                          hintText: 'Search food...',
                          fillColor: Defaults.foodColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.5),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.line_weight_outlined),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MidTile(
                          foodIcon: 'assets/images/chicken11.jpg',
                          indexClicked: indexClicked,
                          pressed: foodTile(0),
                          index: 0,
                          text: 'Juane'),
                      const SizedBox(
                        width: 10,
                      ),
                      MidTile(
                          foodIcon: 'assets/images/chicken10.jpg',
                          indexClicked: indexClicked,
                          pressed: foodTile(1),
                          index: 1,
                          text: 'Buldak'),
                      const SizedBox(
                        width: 10,
                      ),
                      MidTile(
                          foodIcon: 'assets/images/chicken9.jpg',
                          indexClicked: indexClicked,
                          pressed: foodTile(2),
                          index: 2,
                          text: 'Jocon'),
                      const SizedBox(
                        width: 10,
                      ),
                      MidTile(
                          foodIcon: 'assets/images/Chicken 2.jpg',
                          indexClicked: indexClicked,
                          pressed: foodTile(3),
                          index: 3,
                          text: 'Nugget'),
                      const SizedBox(
                        width: 10,
                      ),
                      MidTile(
                          foodIcon: 'assets/images/Chicken 5.jpg',
                          indexClicked: indexClicked,
                          pressed: foodTile(4),
                          index: 4,
                          text: 'Karaage'),
                    ],
                  ),
                  height: 50,
                ),
              ),
              SizedBox(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FoodTile(
                        image: 'assets/images/Chicken 2.jpg',
                        foodName: 'Fresh chicken',
                        foodSubName: 'Spicy fresh chicken ',
                        calories: '78 Calories',
                        amount: '\$9.80'),
                    FoodTile(
                        image: 'assets/images/Chicken 1.jpg',
                        foodName: 'Chicken Dimsu',
                        foodSubName: 'Spicy chicken dimsu',
                        calories: '65 Calories',
                        amount: '\$55.5'),
                    FoodTile(
                        image: 'assets/images/Chicken 3.jpg',
                        foodName: 'Whole chicken',
                        foodSubName: 'Spicy whole chicken',
                        calories: '40 Calories',
                        amount: '\$80.9'),
                  ],
                ),
                height: 300,
              )
            ],
          )
        ],
      ),
    );
  }
}
