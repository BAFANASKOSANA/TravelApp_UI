import 'package:flutter/material.dart';
import 'package:travel_app/models/destinations.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({Key? key, required this.destination})
      : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.00),
                        boxShadow: [
                          BoxShadow(offset: const Offset(0, 1.5),
                              blurRadius: 7.0,
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: .80)
                        ]
                    ),
                    child: Hero(
                      tag: widget.destination.imgUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.00),
                        child: Image(
                          image: AssetImage(widget.destination.imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                ),
              ]
          )
        ],
      ),
    );
  }
}
