import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.network(
          'https://mclaren.scene7.com/is/image/mclaren/Senna-tile-1-1200x1200:crop-4x3?wid=1920&hei=1440', // URL de la imagen para el fondo del AppBar
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent, // Hacer el AppBar transparente para mostrar la imagen
      ),
      body: Container(
        color: const Color.fromARGB(255, 233, 61, 8), // Cambia el color de fondo aquí
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20), // Espacio entre el texto y la imagen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://images.ctfassets.net/s699s7kh1jys/46fxNWKEBIoCTVqRRU5d7v/77d1eb3025d39950c3154de4ce0df8b8/how-20much-20is-20a-20porsche-20918-20spyder.jpg', // URL de la imagen
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(width: 30), // Espacio entre la imagen y el texto
                  const Text(
                    'Oscar Rafael Coyote',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
