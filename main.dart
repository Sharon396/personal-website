import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
      home: MyHomePage(title: "SHARON T S"),
    );
  }
}

double sizedbox = 10;
List<Container> all = [
  Container(
    child: Card(
      elevation: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Icon(Icons.location_city_rounded),
                  SizedBox(
                    width: sizedbox,
                  ),
                  Text(
                      "Thannikal Challissery House P. O Manalur Thrissur\nKerala, Thrissur, India"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.email_rounded),
                  SizedBox(
                    width: sizedbox,
                  ),
                  GestureDetector(
                      onTap: () => emailurl(),
                      child: Text("sharonshajan369@gmail.com"))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone_android_rounded),
                  SizedBox(
                    width: sizedbox,
                  ),
                  GestureDetector(onTap: () => phoneurl(), child: Text("8139068283"))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  ),
  Container(
    child: Card(
      elevation: 15,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.twitter),
                  //Icon(Icons.link),
                  SizedBox(
                    width: sizedbox,
                  ),
                  GestureDetector(
                      onTap: () => twitterurl(),
                      child: Text("@sharon___shajan"))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.public_rounded),
                  SizedBox(
                    width: sizedbox,
                  ),
                  GestureDetector(
                      onTap: () => websiteurl(), child: Text("sharon369.me"))
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.github),
                  // Icon(Icons.link),
                  SizedBox(
                    width: sizedbox,
                  ),
                  GestureDetector(
                      onTap: () => githuburl(),
                      child: Text("github.com/Sharon396"))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  )
];
Future<void> twitterurl() async {
  if (!await launchUrl(_twiter)) {
    throw "sorry it is not your fault";
  }
}

Future<void> websiteurl() async {
  if (!await launchUrl(_personalwebsite)) {
    throw "sorry it is not your fault";
  }
}

Future<void> githuburl() async {
  if (!await launchUrl(_github)) {
    throw "sorry it is not your fault";
  }
}

Future<void> emailurl() async {
  if (!await launchUrl(_email)) {
    throw "sorry it is not your fault";
  }
}
Future<void> phoneurl() async {
  if (!await launchUrl(_phone)) {
    throw "sorry it is not your fault";
  }
}
String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

final Uri _email = Uri(
  scheme: 'mailto',
  path: 'sharonshajan369@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Hello there!',
  }),
);
final Uri _phone = Uri(scheme: "tel", path: "+918139068283");
final Uri _twiter = Uri.parse("https://twitter.com/Sharon___shajan");
final Uri _personalwebsite = Uri.parse("https://sharon369.me");
final Uri _github = Uri.parse("https://github.com/Sharon396");


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
              title: Text("SHARON T S"),
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
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                              Color.fromARGB(255, 0, 219, 222),
                              Color.fromARGB(255, 252, 0, 255),
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
                    Positioned(
                      bottom: 10,
                      // top: 10,
                      left: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => largepic()));
                        },
                        child: const Center(
                          child: Hero(
                            tag: "pic",
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage: AssetImage("images/profile.png"),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: all.length,
              (context, index) {
                return Container(
                  child: all[index],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

class largepic extends StatefulWidget {
  const largepic({Key? key}) : super(key: key);

  @override
  State<largepic> createState() => _largepicState();
}

class _largepicState extends State<largepic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Hero(
          tag: "pic",
          child: Center(
              child: Container(
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("images/profile.png"))),
          )),
        ),
      ),
    );
  }
}
