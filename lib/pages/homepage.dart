import 'package:atlantic_cw/pages/notificationspage.dart';
import 'package:atlantic_cw/pages/settingspage.dart';
import 'package:atlantic_cw/service/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: MyColors.pantoneRed,
          foregroundColor: MyColors.cosmicLatte,
          icon: const Icon(Icons.qr_code_rounded),
          label: const Text(
            'Scan QR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: MyColors.pantoneRed,
          title: Text(
            'ATLANTIC'.toUpperCase(),
            style: const TextStyle(
                color: MyColors.cosmicLatte, fontFamily: "Freshman"),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const NotificationsPage();
                  },
                ));
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SettingsPage();
                  },
                ));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 250,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/pexels-erik-mclean-4876676.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.5),
                            ],
                                stops: [
                              0.1,
                              0.9
                            ])),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "6 Washes",
                          style: TextStyle(
                            color: MyColors.cosmicLatte,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Hello John Doe",
                          style: TextStyle(
                            fontFamily: "Freshman",
                            fontSize: 20,
                            color: MyColors.cosmicLatte,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "GO UNLIMITED",
                              style: TextStyle(
                                color: MyColors.cosmicLatte,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: MyColors.cosmicLatte,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  ListTile(
                    title: const Text(
                      'Latets Washes',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "More",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      children: [
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("dsa"),
                          subtitle: Text("da"),
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("dsa"),
                          subtitle: Text("da"),
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("dsa"),
                          subtitle: Text("da"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  ListTile(
                    title: const Text(
                      'Closest Car Washes',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "More",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemExtent: 200,
                      children: [
                        const Card(
                          child: Text("dsadsa"),
                        ),
                        const Card(
                          child: Text("dsadsa"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  ListTile(
                    title: const Text(
                      'Campaigns',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "More",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemExtent: 200,
                      children: [
                        const Card(
                          child: Text("dsadsa"),
                        ),
                        const Card(
                          child: Text("dsadsa"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
