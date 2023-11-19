import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:unihack2023/components/drawer.dart';
import 'package:unihack2023/components/event.dart';

class MapsPage extends StatefulWidget {
  final List<Event> events;

  const MapsPage({Key? key, required this.events}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.7489, 21.2087);

  Set<Marker> markers = {};

  void _addMarkers() {
    for (var event in widget.events) {
      final MarkerId markerId = MarkerId(event.name);

      // Creating a new MARKER
      final Marker marker = Marker(
        markerId: markerId,
        position: LatLng(event.lat ?? 0.0, event.lng ?? 0.0),
        infoWindow: InfoWindow(title: event.name, snippet: event.location),
        onTap: () {
          // Handle marker tap if needed
        },
      );

      setState(() {
        // Adding a new marker to the map
        markers.add(marker);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _addMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Maps'),
        backgroundColor: const Color(0xFF479FD5),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: markers,
      ),
    );
  }
}
