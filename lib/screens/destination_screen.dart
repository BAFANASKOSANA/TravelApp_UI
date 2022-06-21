import 'package:flutter/material.dart';
import 'package:travel_app/models/activities.dart';
import 'package:travel_app/models/destinations.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({Key? key, required this.destination})
      : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {

  Text _buildStars(rating){
    String stars = '';
    for(int i = 0; i < rating; i++){
      stars += '⭐ ';
    }

    stars.trim();
    return Text(stars, style: const TextStyle(
      fontSize: 13.00
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.00),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 3),
                          blurRadius: 15.0,
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 2)
                    ]),
                child: Hero(
                  tag: widget.destination.imgUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.00),
                    child: Image(
                      image: AssetImage(widget.destination.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ]),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 15.00, bottom: 20.00),
                itemCount: widget.destination.activities.length,
                itemBuilder: (context, index) {
                  Activities activity = widget.destination.activities[index];
                  return Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150.00,
                        margin: const EdgeInsets.only(
                            left: 40.00, top: 5.00, right: 20.00, bottom: 5.00),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.00),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, .05),
                                  blurRadius: 7.0,
                                  color: Colors.black.withOpacity(0.05),
                                  spreadRadius: .10)
                            ],
                            color: Colors.white),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 100.00, right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 125.00,
                                    child: Text(
                                      activity.activityPlace,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.00,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        activity.price,
                                        style: const TextStyle(
                                            fontSize: 18.00,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        'per pax',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(activity.type),
                              const SizedBox(height: 5.0,),
                              _buildStars(activity.rating),
                              const SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        color: Theme.of(context).accentColor),
                                    child: Text(
                                      activity.startTimes[0],
                                      style: const TextStyle(
                                          fontSize: 12.00,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: .1),
                                    ),
                                    padding: const EdgeInsets.all(5.00),
                                  ),
                                  const SizedBox(
                                    width: 5.00,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        color: Theme.of(context).accentColor),
                                    child: Text(
                                      activity.startTimes[1],
                                      style: const TextStyle(
                                          fontSize: 12.00,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: .1),
                                    ),
                                    padding: const EdgeInsets.all(5.00),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        bottom: 12.0,
                        top: 12.0,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0.05, .05),
                                  blurRadius: 7.0,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: .50)
                            ]
                          ),
                          width: 110.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                image: AssetImage(activity.activityImg),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
