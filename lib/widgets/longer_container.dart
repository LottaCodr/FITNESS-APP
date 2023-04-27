import 'package:flutter/material.dart';

class LongerContainer extends StatelessWidget {
  final Image myImage;
  final String title;
  final int noOfCalories;
  final int theTime;

  const LongerContainer(
      {Key? key,
      required this.title,
      required this.noOfCalories,
      required this.theTime,
      required this.myImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: myImage,
          ),
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 19,
                  shadows: [
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 5,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      //backgroundBlendMode:
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.local_fire_department_outlined,
                            size: 15,
                          ),
                          Text(
                            '$noOfCalories kcal',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      //backgroundBlendMode:
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_time_rounded,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '$theTime mins',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              // shadows: [
                              //   Shadow(
                              //     offset: Offset(0, 0),
                              //     blurRadius: 10,
                              //     color: Colors.black,
                              //   )
                              // ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
