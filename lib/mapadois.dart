import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const Telamapadois(),
    );
  }
}

class Telamapadois extends StatefulWidget {
  const Telamapadois ({super.key});

  @override
  State<Telamapadois> createState() => _HomeState();
}

class _HomeState extends State<Telamapadois> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localizacao Moscow'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(55.75054, 37.61748), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/atlas/{z}/{x}/{y}.png?apikey=45d266d271d24a1c84395bc5f67a8bbe',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(55.75054, 37.61748),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}