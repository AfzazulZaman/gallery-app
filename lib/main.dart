import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/itempage.dart';
void main() {
  runApp(const MyApp()); // Always wrap your app in MyApp, where MaterialApp is the root
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(), // HomePage is your initial screen
    );
  }
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
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
      
child: Column(
  children: [
    Expanded(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2022/04/10/09/02/cats-7122943_1280.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Imagination',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
)

      ),
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Imagination',
          style: TextStyle(color: Colors.white),
        ),
        actions:[
           IconButton(onPressed: (){ }, icon: Icon(Icons.person),iconSize: 28,color: Colors.white,)
        ]
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                  'https://cdn.pixabay.com/photo/2023/12/09/10/10/woman-8439003_1280.png'),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the second page (ItemPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ItemPage()),
                  );
                },
                child: const SizedBox(
                  width: 100,
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
