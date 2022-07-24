import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'human_planet.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}
class Home extends StatelessWidget {
   Home({Key? key}) : super(key:key);
  final data =  [
    CardPlanetData(title: "work from home",
        subtitle: "There is much more flexibility to work from home today.",
        image:const AssetImage("assets/images/img-1.PNG"),
        backgroundColor: const  Color.fromRGBO(255, 238, 219,1),
       titleColor: Colors.orangeAccent,
        subtitleColor: Colors.blueGrey,
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
    CardPlanetData(title: "coding",
        subtitle: "Programmer: A machine that turns coffee into code.",
        image: const AssetImage("assets/images/img-2.PNG"),
        backgroundColor:  Colors.white,
        titleColor: Colors.purple,
        subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(title: "success",
        subtitle: "Success usually comes to those who are too busy to be looking for it.",
        image:const AssetImage("assets/images/img-3.PNG"),
        backgroundColor: const Color.fromRGBO(234, 246, 246,1),
        titleColor: Colors.red,
        subtitleColor: Colors.teal,
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return Center(child: CardPlanet(data: data[index]));
        },
      ),
    );
  }
}
