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
      home: const Telamapatres(),
    );
  }
}

class Telamapatres extends StatefulWidget {
  const Telamapatres({super.key});

  @override
  State<Telamapatres> createState() => _HomeState();
}

class _HomeState extends State<Telamapatres> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localizacao Africa do Sul'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-28.81662, 24.99164), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=45d266d271d24a1c84395bc5f67a8bbe',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-28.81662, 24.99164),
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