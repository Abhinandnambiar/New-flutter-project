import 'package:flutter/material.dart';
import 'package:flutterassignment/Login_second.dart';

class LogOne extends StatefulWidget {
  const LogOne({Key? key}) : super(key: key);

  @override
  State<LogOne> createState() => _LogOneState();
}

class _LogOneState extends State<LogOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pexels-photo-4254555.jpeg'),
              fit: BoxFit.fitHeight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'A journey of thousent       miles begins with a         single step',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 2.85),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 390,
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 20),
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(20)),
                height: 60,
                width: 350,
                child: TextButton.icon(
                    onPressed: () {
                      // page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginSecond()));
                    },
                    icon: const Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 20),
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(20)),
                height: 60,
                width: 350,
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginSecond()));
                    },
                    icon: const Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Mail',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
