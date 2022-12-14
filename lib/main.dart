import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: "SHARON T S"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "SHARON T S";
  double size = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 360,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 162, 1, 255),
                          Color.fromARGB(255, 2, 245, 204)
                        ])),
                        child: Column(
                          children: [
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontStyle: FontStyle.italic,
                                    fontSize: size),
                                "LEARN"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  letterSpacing: 3,
                                  fontStyle: FontStyle.italic,
                                  fontSize: size,
                                ),
                                "BUILD"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontStyle: FontStyle.italic,
                                  fontSize: size,
                                ),
                                "REPEAT"),
                            Container(
                              height: 78,
                              color: Colors.white,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      // top: 10,
                      left: 200,
                      child: Center(
                        child: CircleAvatar(
                          radius: 100,
                          //minRadius: 50,
                          // maxRadius: 100,
                          backgroundImage: AssetImage("images/profile.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
            delegate: SliverChildBuilderDelegate(
             
              (BuildContext context, int index) {
                return ;
              },
              childCount: 20,
            ),
          ),
          ],
        ),
      ),
    );
  }
}
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: ((context, index) {
        return Card(
          child: All.,
        );
      }), 
      separatorBuilder: (ctx, index) {
              return const SizedBox();
            },
       itemCount: 5);
  }
}
List<dynamic> All=[
  info(),
  //address(),

];
info(){
  return Column(
    children: [
      Text("Hardworking and passionate job seeker with strong organizational skills eager to secure entry-level\nsoftware engineer position. Ready to help the team achieve company goals. A reliable employee seeking\na Software engineer position. Offering excellent communication and good judgment.")
    ],
  );
}