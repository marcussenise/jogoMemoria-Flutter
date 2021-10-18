import 'package:flutter/material.dart';
import 'package:jogomemoria/dificil.dart';
import 'package:jogomemoria/facil.dart';
import 'package:jogomemoria/medio.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo da memória',
      theme: ThemeData(
        primarySwatch: corPrimaria,
        accentColor: Colors.yellow.shade400,
      ),
      home: MyHomePage(),
    );
  }
}

MaterialColor corPrimaria = MaterialColor(0xFF161b22, color);
Map<int, Color> color = {
  50: Color.fromRGBO(22, 27, 34, .1),
  100: Color.fromRGBO(22, 27, 34, .2),
  200: Color.fromRGBO(22, 27, 34, .3),
  300: Color.fromRGBO(22, 27, 34, .4),
  400: Color.fromRGBO(22, 27, 34, .5),
  500: Color.fromRGBO(22, 27, 34, .6),
  600: Color.fromRGBO(22, 27, 34, .7),
  700: Color.fromRGBO(22, 27, 34, .8),
  800: Color.fromRGBO(22, 27, 34, .9),
  900: Color.fromRGBO(22, 27, 34, 1),
};

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: corPrimaria,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bem-vindo!",
                style: TextStyle(color: Colors.white, fontSize: 25)),
            SizedBox(height: 25),
            Lottie.network(
              "https://assets1.lottiefiles.com/packages/lf20_dgBN4P.json",
              width: 250,
              height: 250,
            ),
            SizedBox(height: 25),
            Text('Escolha abaixo o nível de dificuldade:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            SizedBox(height: 15),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facil()),
                  );
                },
                child: Text(
                  'Fácil (6 pares)',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(240, 60),
                    side: BorderSide(width: 2.0, color: Colors.yellow.shade400),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    padding: EdgeInsets.all(25))),
            SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Medio()),
                );
              },
              child: Text(
                'Intermediário (8 pares)',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(240, 60),
                  side: BorderSide(width: 2.0, color: Colors.yellow.shade400),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  padding: EdgeInsets.all(25)),
            ),
            SizedBox(height: 15),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dificil()),
                  );
                },
                child: Text(
                  'Difícil (10 pares)',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(240, 60),
                    side: BorderSide(width: 2.0, color: Colors.yellow.shade400),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    padding: EdgeInsets.all(25))),
          ],
        ),
      ),
    );
  }
}
