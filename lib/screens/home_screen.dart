import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIcon = 0;
  final List _icons = <IconData>[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.parachuteBox,
    Icons.bike_scooter
  ];

  Widget buildIcons(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIcon = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        child: Icon(
          _icons[index],
          color: selectedIcon == index ? Theme.of(context).primaryColor : const Color(0xFFcad9e2),
          size: 30.00,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.00),
          color: selectedIcon == index ? Theme
              .of(context)
              .accentColor : const Color(0xFFe8eef3),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        padding: const EdgeInsets.only(top: 15.00),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0,),
            child: Text('What would you like to find?', style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25.00,
                letterSpacing: 1.0,
                color: Colors.black
            ),),
          ),
          const SizedBox(height: 20.00,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons.asMap().entries.map((MapEntry map) => buildIcons(map.key)).toList(),
          ),
          const SizedBox(height: 22.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Top Destinations', style: TextStyle(
                  fontSize: 20.00,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .70
                ),),
                GestureDetector(
                  onTap: (){
                    print('See All');
                  },
                  child: Text('See All', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.00,
                    color: Theme.of(context).primaryColor
                  ),),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0,),
          const DestinationCarousel(),
        ],)),
    );
  }
}
