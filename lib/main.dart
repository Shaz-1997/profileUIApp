import 'package:flutter/material.dart';
import 'package:userprofileapp/Animations/FadeAnimation.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 600,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/emma.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(
                                1,
                                const Text(
                                  "Emma Watson",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FadeAnimation(
                                    1.2,
                                    const Text(
                                      "60 Videos",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    )),
                                const SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                    1.3,
                                    const Text(
                                      "240K Subscribers",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                          1.6,
                          const Text(
                            "Emma Charlotte Duerre Watson (born 15 April 1990) is an English actress. Known for her roles in both blockbusters and independent films, she has received a selection of accolades",
                            style: TextStyle(color: Colors.grey, height: 1.4),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                          1.6,
                          const Text(
                            "Born",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          1.6,
                          const Text(
                            "April,15th 1990,Paris France",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          1.6,
                          const Text(
                            "Nationality",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          1.6,
                          const Text(
                            "British",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.6,
                          const Text(
                            "Videos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.8,
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(image: 'assets/images/emma_1.jpg'),
                                makeVideo(image: 'assets/images/emma_2.jpeg'),
                                makeVideo(image: 'assets/images/emma_3.jpeg'),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                )
              ]))
            ],
          ),
          Positioned.fill(
              bottom: 50,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FadeAnimation(
                    2,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[700]),
                      child: Align(
                          child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.3)
          ])),
          child: const Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
