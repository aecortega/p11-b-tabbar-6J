import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Tienda de Ropa Cisneros Ortega"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Carrito')),
              Tab(child: Text('pagar')),
              Tab(child: Text('tarjeta')),
              Tab(child: Text('Hombre')),
              Tab(child: Text('Mujer')),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child:
                  Icon(Icons.add_shopping_cart, color: Colors.blue, size: 350),
            ),
            Center(
              child: Icon(Icons.money, color: Colors.green, size: 350),
            ),
            Center(
              child: Icon(Icons.payment, color: Colors.yellow, size: 350),
            ),
            Center(
              child: Icon(Icons.boy, color: Colors.brown, size: 350),
            ),
            Center(
              child: Icon(Icons.woman, color: Colors.pink, size: 350),
            ),
          ],
        ),
      ),
    );
  }
}
