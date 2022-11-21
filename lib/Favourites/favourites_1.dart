import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final getStarted;
  const Favourite({
    Key? key,
    required this.getStarted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          blendMode: BlendMode.darken,
          shaderCallback: (bounds) {
            return const LinearGradient(
                    colors: [Colors.black45, Colors.black12],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(bounds);
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Chicken 5.jpg'),
              ),
            ),
          ),
        ),
        Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'CHICKENBITE',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'EAT MORE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                autofocus: true,
                clipBehavior: Clip.antiAlias,
                onPressed: getStarted,
                child: const Text('Get started'),
              ),
              const SizedBox(height: 3),
              const Text(
                'v2.10.2.0.20.2',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
