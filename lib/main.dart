import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/photos-gratuite/delicieux-sandwichs-faits-maison-pepites-poulet-frites-au-ketchup-tableau-noir-surface-grise_179666-42499.jpg?w=2000'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(131, 78, 78, 78),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Discover Delicioun Eats With Pangan Today!',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: double.infinity,
                    // margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 28, 113, 2),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      "Let's Go!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
