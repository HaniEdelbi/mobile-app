import 'package:epioneer_app/anime.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Epioneer",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                width: 800,
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/MainImage.webp',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 600,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Missing Your Favorite Shows?\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Text(
                            "Epioneer Got You!\n",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            "We keep track of your Favorite Shows,\n and keeps you up-to-date on any news.\n\n All within a tap of your finger!",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                              "Feel free to subscribe to Our Newsletter!",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: screenwidth * 0.4,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter Email here.",
                                      filled: true,
                                      fillColor: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ],
                ),
              ),
              Center(
                child: Column(children: [
                  Container(
                    width: 1700,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "Most Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )),
                  ),
                  //ITEMS
                  Column(
                    children: [
                      Container(
                        width: 1700,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(20),
                            border: const Border(
                                bottom:
                                    BorderSide(color: Colors.red, width: 2))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/JJK.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  AS[0].toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(""),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1700,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(20),
                            border: const Border(
                                bottom:
                                    BorderSide(color: Colors.red, width: 2))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/DemonSlayer.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  AS[1].toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(""),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1700,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(20),
                            border: const Border(
                                bottom:
                                    BorderSide(color: Colors.red, width: 2))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/FateGrandOrder.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  AS[2].toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(""),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
