import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/star.dart';
import 'package:flutterassignment/textcontainer.dart';
import 'star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              CupertinoIcons.list_bullet,
              size: 26,
            ),
            onPressed: () {}),
        title: const Text(
          'Start To Travel',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bell_fill,
                size: 23,
              )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                'images/Elon_Musk_Royal_Society_(crop2).jpg',
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 50,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    gradient: LinearGradient(colors: [
                      Colors.blue.withOpacity(0.7),
                      Colors.blue.withOpacity(0.3)
                    ])),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Text(
                'Discover',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-1268855.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-1285625 (1).jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          image: const DecorationImage(
                              image:
                                  AssetImage('images/pexels-photo-417074.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/ferris-wheel-6547089_960_720.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/hallstatt-3609863_960_720.webp'),
                              fit: BoxFit.cover)),
                    )
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: 180,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                        gradient: LinearGradient(colors: [
                          Colors.blue.withOpacity(0.8),
                          Colors.blue.withOpacity(0.3)
                        ])),
                    child: TextButton(
                      child: const Text(
                        'Tickets',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.blue.withOpacity(0.3),
                        Colors.blue.withOpacity(0.8)
                      ])),
                  child: TextButton(
                    child: const Text(
                      'Location',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'POPULER',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 210,
                ),
                Text('Show more')
              ],
            ),
            const SizedBox(height: 1),
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        height: 150,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'images/queen-of-liberty-statue-of-liberty-new-york-liberty-statue-64271.jpeg'),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 65, top: 10),
                                child: Text(
                                  'USA',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-1603650.jpeg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 33, top: 10),
                              child: Text(
                                'Thaj Mahal',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-2314983.jpeg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 65, top: 10),
                              child: Text(
                                'INDIA',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-3879071.jpeg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 63, top: 10),
                              child: Text(
                                'PARIS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-4254555.jpeg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: Text(
                                'CHAINA',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/pexels-photo-2434267.jpeg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 35, top: 10),
                              child: Text(
                                'AUSTRALIA',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'TRENDING',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 205,
                ),
                Text('Show more')
              ],
            ),
            const SizedBox(height: 1),
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        height: 150,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('images/Victoria-Canada.png'),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 45, top: 10),
                                child: Text(
                                  'CANADA',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('images/Tokyo.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 55, top: 10),
                              child: Text(
                                'JAPAN',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('images/Iguazu-Falls.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 55, top: 10),
                              child: Text(
                                'BRAZIL',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('images/Calabria-Italy.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 65, top: 10),
                              child: Text(
                                'ITALY',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'images/Tenerife-Canary-Islands.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 10),
                              child: Text(
                                'SPAIN ISLAND',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('images/Arequipa.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 65, top: 10),
                              child: Text(
                                'PERU',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                                'images/hallstatt-3609863_960_720.webp'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                            color: Colors.red,
                          ),
                          label: const Text('Thailand')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextContain(
                          color: Colors.white,
                          size: 150,
                          text: Text('Country of mountains and hills',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Star(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 10),
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:
                                AssetImage('images/street-4630827_960_720.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                            color: Colors.red,
                          ),
                          label: const Text('Russia')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextContain(
                          color: Colors.white,
                          size: 150,
                          text: Text('The largest country  of the world',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Star(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 10),
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                                'images/alleppey-2817032_960_720.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                            color: Colors.red,
                          ),
                          label: const Text('Kerala')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextContain(
                          color: Colors.white,
                          size: 150,
                          text: Text(
                              'one ofthe prominent  tourist  destination',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Star(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 10),
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:
                                AssetImage('images/dubai-4044183_960_720.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                            color: Colors.red,
                          ),
                          label: const Text('Dubai')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextContain(
                          color: Colors.white,
                          size: 150,
                          text: Text(
                            'A city of skyscrapers ports, and beaches',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Star(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 10),
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image:
                                AssetImage('images/mumbai-1370023_960_720.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.place,
                            color: Colors.red,
                          ),
                          label: const Text('Mumbai')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextContain(
                          color: Colors.white,
                          size: 150,
                          text: Text('wonderful British architecture,beatchs',
                              // overflow: TextOverflow.clip,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Star(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
