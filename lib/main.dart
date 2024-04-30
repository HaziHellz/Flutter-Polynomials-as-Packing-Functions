import 'package:flutter/material.dart';
import 'package:flutter_polynomials_as_packing_functions_/bp.dart';
import 'package:flutter_polynomials_as_packing_functions_/dp.dart';
import 'package:flutter_polynomials_as_packing_functions_/gtp.dart';
import 'package:flutter_polynomials_as_packing_functions_/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme(
      brightness: MediaQuery.platformBrightnessOf(context),
      primary: const Color.fromRGBO(246, 224, 211, 1),
      onPrimary: const Color.fromARGB(255, 77, 59, 59),
      secondary: const Color.fromARGB(255, 255, 208, 108),
      onSecondary: const Color.fromARGB(255, 77, 59, 59),
      error: const Color.fromARGB(255, 255, 98, 98),
      onError: const Color.fromARGB(255, 246, 224, 211),
      background: const Color.fromARGB(255, 246, 224, 211),
      onBackground: const Color.fromARGB(255, 77, 59, 59),
      surface: const Color.fromARGB(255, 246, 224, 211),
      onSurface: const Color.fromARGB(255, 77, 59, 59),
    );

    return MaterialApp(
      title: 'Polynomials',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Polynomials',
      ),
      debugShowCheckedModeBanner: true,
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
  static const Color onTitlesCream = Color.fromRGBO(246, 224, 211, 1);
  static const Color titlesBackground = Color.fromARGB(255, 77, 59, 59);
  //static const Color hoverColor = Color.fromARGB(255, 255, 208, 108);
  int _selectedPage = 0;
  List<Widget> bodies = <Widget>[const HomePage(), GTP(), BP(), DP()];

  void _onListTileTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        foregroundColor: onTitlesCream,
      ),
      body: bodies[_selectedPage],
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .1,
              decoration: const BoxDecoration(
                color: titlesBackground,
              ),
              child: Center(
                child: IconButton(
                    onPressed: () {
                      _onListTileTapped(0);
                      Navigator.pop(context);
                    },
                    icon: const Text(
                      "Polynomials",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: onTitlesCream),
                    )),
              ),
              //),
            ),
            Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: titlesBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  onTap: () {
                    _onListTileTapped(1);
                    Navigator.pop(context);
                  },
                  title: const Center(
                    child: Text(
                      "Greater-Than Polynomials (GTP)",
                      style: TextStyle(
                        backgroundColor: titlesBackground,
                        color: onTitlesCream,
                      ),
                    ),
                  ),
                )),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: titlesBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                onTap: () {
                  _onListTileTapped(2);
                  Navigator.pop(context);
                },
                title: const Center(
                  child: Text(
                    "Diagonal Polynomials (DP)",
                    style: TextStyle(
                      backgroundColor: titlesBackground,
                      color: onTitlesCream,
                    ),
                  ),
                ),
         
              ),
            ),
            Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: titlesBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  onTap: () {
                    _onListTileTapped(3);
                    Navigator.pop(context);
                  },
                  title: const Center(
                    child: Text(
                      "Box Polynomials (BP)",
                      style: TextStyle(
                        backgroundColor: titlesBackground,
                        color: onTitlesCream,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
