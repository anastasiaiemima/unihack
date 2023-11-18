import 'package:flutter/material.dart';
import 'package:unihack2023/components/card.dart';
import 'package:unihack2023/components/event.dart';
import 'package:unihack2023/components/drawer.dart';

class FavoritesPage extends StatefulWidget {
  final List<Event> events;



  FavoritesPage({required this.events});

  @override
  _FavoritesPageState createState() => _FavoritesPageState(events: events);

}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Event> events;

  _FavoritesPageState({required this.events});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Events'),
        backgroundColor: const Color(0xFF479FD5),
      ),

      drawer: AppDrawer(),
      body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return EventCard(
              event: events[index],
            );
          },
        ),
    );
  }
}
