// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning/Profile/navtile.dart';
import 'package:learning/Profile/profileTile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var profileIndex = 0;
  Function answerQuestion(int index) {
    return () {
      setState(() {
        profileIndex = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/background.webp'),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FlutterLogo(size: 45),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Olaoluwa Gabriel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Olaoluwagabriel7@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 0,
                      onTap: answerQuestion(0),
                    ),
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 1,
                      onTap: answerQuestion(1),
                    ),
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 2,
                      onTap: answerQuestion(2),
                    ),
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 3,
                      onTap: answerQuestion(3),
                    ),
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 4,
                      onTap: answerQuestion(4),
                    ),
                    NavBarTile(
                      profileIndex: profileIndex,
                      index: 5,
                      onTap: answerQuestion(5),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.zero),
              const Divider(
                thickness: 1,
                color: Colors.black,
                endIndent: 3,
                indent: 3,
              ),
              const Center(
                child: Text(
                  'OLAAPP',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const Center(
                child: Text(
                  'GoogleFor STARTUPS',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
                endIndent: 3,
                indent: 3,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile 1.jpg'),
                radius: 70,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Olaoluwa Gabriel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                'Olaoluwagabriel@gmail.com',
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: const Center(
                    child: Text(
                  'Upgrade to premium',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
                height: 46,
                width: 328,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              MyProfile(
                icon1: Icons.shopping_bag_outlined,
                arrowShown: true,
                text: 'Your order history',
              ),
              const SizedBox(
                height: 11,
              ),
              MyProfile(
                icon1: Icons.help_outlined,
                arrowShown: true,
                text: 'Help and support',
              ),
              const SizedBox(
                height: 11,
              ),
              MyProfile(
                icon1: Icons.card_giftcard,
                arrowShown: true,
                text: 'Load gift voucher',
              ),
              const SizedBox(
                height: 11,
              ),
              MyProfile(
                icon1: Icons.logout_outlined,
                arrowShown: false,
                text: 'Logout',
              ),
              const SizedBox(
                height: 11,
              ),
            ],
          ),
        ));
  }
}
