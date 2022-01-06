import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print('decrement to');
    print(count);
  }

  void increment() {
    count++;
    setState(() {});
    print('increment to >>');
    print(count);
  }

  bool get isEmpty => count <= 0;

  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isFull ? 'Lotado' : 'Pode entrar',
          style: const TextStyle(
            fontSize: 50,
            color: Colors.cyan,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text('Aqui você está em casa'),
        Padding(
          padding: EdgeInsets.all(40),
          child: Text(
            count.toString(),
            style: TextStyle(fontSize: 70),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: isFull ? null : increment,
                style: TextButton.styleFrom(
                  backgroundColor: isFull ? Colors.black12 : Colors.black26,
                  fixedSize: Size(100, 50),
                ),
                child: Text(
                  'Entrou',
                  style: TextStyle(
                    fontSize: 16,
                    color: isFull ? Colors.black12 : Colors.black,
                  ),
                )),
            const SizedBox(
              width: 32,
              height: 100,
            ),
            TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty ? Colors.black12 : Colors.black26,
                  fixedSize: Size(100, 50),
                ),
                child: Text(
                  'Saiu',
                  style: TextStyle(
                    fontSize: 16,
                    color: isEmpty ? Colors.black12 : Colors.black,
                  ),
                )),
          ],
        )
      ],
    ));
  }
}
