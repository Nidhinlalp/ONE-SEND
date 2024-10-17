import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ONE SEND',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          )),
      home: const MyHomePage(title: 'ONE SEND'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 1),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400,
              child: const Text(
                '"One Send" is an open-source project aimed at creating a global platform for easy and secure file sharing. ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                " its goal is to allow users to send and receive files seamlessly across Android, iOS, Windows, and Linux devices. With cross-platform support, 'One Send' will ensure users can share files effortlessly, no matter what device or operating system they are using.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blueAccent,
              child: const Text(
                "Let's get started!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
