import 'package:flutter/material.dart';
import 'package:unihack2023/auth/login_or_register.dart';
import 'package:unihack2023/components/card.dart';
import 'package:unihack2023/components/event.dart';
import 'components/drawer.dart';

List<String> categories = ['All','Educational', 'Cultural','Entertainment', 'Scientific', 'Technology','Art','Food'];

List<Event> eventsmock = [
  Event(
    name: 'Tech Summit 2023',
    description: 'Join us for an exciting Tech Summit where industry experts will share the latest trends and innovations in technology.',
    location: 'Convention Center, San Francisco',
    date: '2023-11-20',
    time: '09:00 AM',
    image: 'POSTARE.png',
    free: true,
    category: 'Technology',
    isFavorite: false,
    likeCount: 15,
    lat: 45.7550,
    lng: 21.2284,
  ),
  Event(
    name: 'Art Exhibition: Modern Masterpieces',
    description: 'Explore the world of contemporary art with a stunning exhibition featuring modern masterpieces.',
    location: 'City Art Gallery, New York',
    date: '2023-12-05',
    time: '02:30 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Art',
    isFavorite: false,
    likeCount: 8,
  ),
  Event(
    name: 'Fitness Bootcamp',
    description: 'Get fit and healthy with our intensive Fitness Bootcamp. Join us for a day of fun workouts and wellness tips.',
    location: 'FitZone Gym, Los Angeles',
    date: '2023-11-25',
    time: '10:00 AM',
    image: 'POSTARE.png',
    free: true,
    category: 'Entertainment',
    isFavorite: false,
    likeCount: 12,
    lat: 45.7270,
    lng: 21.2384,
  ),
  Event(
    name: 'Food Festival: Culinary Delights',
    description: 'Indulge your taste buds at our Food Festival, featuring a variety of culinary delights and gourmet dishes.',
    location: 'City Park, Chicago',
    date: '2023-12-10',
    time: '06:00 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Food',
    isFavorite: false,
    likeCount: 20,
    lat: 45.7280,
    lng: 21.2284,
  ),
  Event(
    name: 'Startup Workshop: Entrepreneurship 101',
    description: 'Learn the essentials of starting your own business at our Startup Workshop. Get insights from successful entrepreneurs.',
    location: 'Innovation Hub, Silicon Valley',
    date: '2023-11-30',
    time: '01:00 PM',
    image: 'POSTARE.png',
    free: true,
    category: 'Educational',
    isFavorite: false,
    likeCount: 18,
  ),
  Event(
    name: 'Music Concert: Jazz Night',
    description: 'Experience an unforgettable Jazz Night with live performances by renowned jazz musicians. Swing to the rhythm!',
    location: 'Harmony Hall, New Orleans',
    date: '2023-12-15',
    time: '08:00 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Cultural',
    isFavorite: false,
    likeCount: 25,
  ),
  Event(
    name: 'Science Fair for Kids',
    description: 'Encourage young minds at our Science Fair for Kids. A day of exciting experiments and educational activities.',
    location: 'Kids Science Museum, Seattle',
    date: '2023-12-08',
    time: '11:00 AM',
    image: 'POSTARE.png',
    free: true,
    category: 'Scientific',
    isFavorite: false,
    likeCount: 15,
  ),
  Event(
    name: 'Fashion Show: Trendsetter Showcase',
    description: 'Witness the latest fashion trends at our Trendsetter Showcase. A glamorous evening of style and sophistication.',
    location: 'Fashion Pavilion, Paris',
    date: '2023-11-28',
    time: '07:30 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Technology',
    isFavorite: false,
    likeCount: 22,
  ),
  Event(
    name: 'Film Festival: Cinematic Excellence',
    description: 'Celebrate the art of filmmaking at our Film Festival, featuring a curated selection of outstanding cinematic works.',
    location: 'Cinema City, Los Angeles',
    date: '2023-12-20',
    time: '05:00 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Art',
    isFavorite: false,
    likeCount: 30,
  ),
  Event(
    name: 'Virtual Reality Gaming Expo',
    description: 'Immerse yourself in the world of virtual reality at our Gaming Expo. Try the latest VR games and technology.',
    location: 'VR Arena, Tokyo',
    date: '2023-11-22',
    time: '03:00 PM',
    image: 'POSTARE.png',
    free: true,
    category: 'Food',
    isFavorite: false,
    likeCount: 18,
  ),
  Event(
    name: 'Tech Summit 2023',
    description:
    'Join us for an exciting Tech Summit where industry experts will share the latest trends and innovations in technology.',
    location: 'Convention Center, San Francisco',
    date: '2023-11-20',
    time: '09:00 AM',
    image: 'POSTARE.png',
    free: true,
    category: 'Technology',
    isFavorite: false,
    likeCount: 15,
    lat: 45.7550,
    lng: 21.2284,
  ),
  Event(
    name: 'Art Exhibition: Modern Masterpieces',
    description: 'Explore the world of contemporary art with a stunning exhibition featuring modern masterpieces.',
    location: 'City Art Gallery, New York',
    date: '2023-12-05',
    time: '02:30 PM',
    image: 'POSTARE.png',
    free: false,
    category: 'Art',
    isFavorite: false,
    likeCount: 8,
  ),
  Event(
    name: 'Fitness Bootcamp',
    description: 'Get fit and healthy with our intensive Fitness Bootcamp. Join us for a day of fun workouts and wellness tips.',
    location: 'FitZone Gym, Los Angeles',
    date: '2023-11-25',
    time: '10:00 AM',
    image: 'POSTARE.png',
    free: true,
    category: 'Fitness',
    isFavorite: false,
    likeCount: 12,

    lat: 45.7256,
    lng: 21.2389,

  ),
  // Add more events as needed
];

List<Event> get favoriteEvents =>
    eventsmock.where((event) => event.isFavorite).toList();

class User {
  final String name;
  final String email;
  final String? profileImage;

  User({
    required this.name,
    required this.email,
    this.profileImage,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlanIT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x004682a9)),
        useMaterial3: true,
      ),
      home: const LoginOrRegister(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      shadowColor: const Color(0xFF4682A9),
      elevation: 5.0,
      backgroundColor: const Color(0xFF479FD5),
      title: Text(title),
    );
  }


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {

    List<Event> filteredEvents = selectedCategory == 'All'
        ? eventsmock
        : eventsmock.where((event) => event.category == selectedCategory).toList();

    return Scaffold(
      appBar: widget.buildAppBar(context),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  String category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: Text(categories[index]),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredEvents.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    event: filteredEvents.elementAt(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add event',
        child: const Icon(Icons.add),
      ),
    );
  }
}



