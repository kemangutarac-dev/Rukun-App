import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const RukunApp());
}

class RukunApp extends StatelessWidget {
  const RukunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rukun App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Position? _currentPosition;
  String _locationMessage = 'Tap button to get location';

  // Function untuk get location
  Future<void> _getUserLocation() async {
    try {
      // Request permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          setState(() {
            _locationMessage = 'Location permission denied';
          });
          return;
        }
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        _currentPosition = position;
        _locationMessage = 'Location captured!';
      });

      print('Lokasi: ${position.latitude}, ${position.longitude}');
    } catch (e) {
      setState(() {
        _locationMessage = 'Error getting location: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rukun App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _locationMessage,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            if (_currentPosition != null) ...[
              SizedBox(height: 20),
              Text(
                'Latitude: ${_currentPosition!.latitude}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Longitude: ${_currentPosition!.longitude}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getUserLocation,
        child: Icon(Icons.location_on),
        tooltip: 'Get Location',
      ),
    );
  }
}
