import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sub_first/widgets/hotel_carousel.dart';

import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int currentIndex = 0;

  final List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          icons[index],
          size: 25.0,
          color: selectedIndex == index
              ? Theme.of(context).colorScheme.primary
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 100.0),
            child: Text(
              'Temukan inspirasi syurga terpencilmu?',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => buildIcon(map.key))
                  .toList()),
          const SizedBox(
            height: 30.0,
          ),
          DestinationCarousel(),
          const SizedBox(
            height: 30.0,
          ),
          HotelCarousel(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Cari destinasi',
              icon: Icon(
                Icons.search,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              label: 'Beranda',
              icon: Icon(
                Icons.home,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              label: 'Beranda',
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              ))
        ],
      ),
    );
  }
}
