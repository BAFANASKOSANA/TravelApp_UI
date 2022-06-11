import 'package:flutter/material.dart';
import 'package:travel_app/models/destinations.dart';
import 'package:travel_app/screens/destination_screen.dart';

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  State<DestinationCarousel> createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 20.00),
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          Destination destination = destinations[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DestinationScreen(destination: destination);
            })),
            child: Container(
              margin: const EdgeInsets.all(5.00),
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              width: 220.00,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 15.00,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 120,
                      width: 210.00,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.00),
                          boxShadow: [BoxShadow(offset: const Offset(0, .2), blurRadius: 7.0, color: Colors.black.withOpacity(0.1), spreadRadius: 0.1)]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${destination.activities.length} activities',
                            style: const TextStyle(
                                fontSize: 17.00,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.4),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            destination.description,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 13.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [BoxShadow(offset: const Offset(0, 1.5), blurRadius: 7.0, color: Colors.black.withOpacity(0.4), spreadRadius: .80)]
                    ),
                    child: Hero(
                      tag: destination.imgUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(destination.imgUrl),
                          fit: BoxFit.cover,
                          height: 185.00,
                          width: 185.00,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
