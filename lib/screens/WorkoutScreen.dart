import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/body_features_toggle.dart';

import '../widgets/longer_container.dart';
import '../widgets/tagged_clip_container.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {


  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                     height: 50,
                    width: 273,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800],
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      //for search box
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:   [
                        //for the search Icon
                        GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.search)),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const  EdgeInsets.all(5),
                          width: 200,
                          height: 40,
                          child: const TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey
                              )
                            ) ,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    //for the filter
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800], shape: BoxShape.circle),
                    child: GestureDetector(
                        onTap: (){},
                        child: const Icon(Icons.filter_alt_rounded)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    //for the starred items
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800], shape: BoxShape.circle),
                    child: GestureDetector(
                        onTap: (){},
                        child: const Icon(Icons.star)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TaggedClippedContainer(
                myImage: Image.asset('assets/runner.jpg'),
                title: 'Running Challenge',
                subTitle: 'Ready - Set - Run',
                tagText: '30 days',
              ),
              const SizedBox(
                height: 30,
              ),
              const BodyFeaturesToggle(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'POPULAR WORKOUTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 21,
              ),
               Container(
                 height: 200,
                 width: MediaQuery.of(context).size.width,
                 child: ListView(
                   padding: const EdgeInsets.all(8),
                   scrollDirection: Axis.horizontal,
                   children: [
                     LongerContainer(
                       title: 'Abs and Legs Workout',
                       noOfCalories: 248,
                       theTime: 20,
                       myImage: Image.asset('assets/work.jpg',
                         fit: BoxFit.cover,
                         alignment: const FractionalOffset(0.7, 0.3),),
                     ),
                     const SizedBox(width: 10,),

                     LongerContainer(
                       title: 'Abs and Legs Workout',
                       noOfCalories: 248,
                       theTime: 20,
                       myImage: Image.asset('assets/maraton.jpg',
                         fit: BoxFit.cover,
                         alignment: const FractionalOffset(0.7, 0.3),),
                     ),

                     const SizedBox(width: 10,),

                     LongerContainer(
                       title: 'Abs and Legs Workout',
                       noOfCalories: 248,
                       theTime: 20,
                       myImage: Image.asset('assets/maraton.jpg',
                         fit: BoxFit.cover,
                         alignment: const FractionalOffset(0.7, 0.3),),
                     ),

                     const SizedBox(width: 10,),

                     LongerContainer(
                       title: 'Abs and Legs Workout',
                       noOfCalories: 248,
                       theTime: 20,
                       myImage: Image.asset('assets/runner.jpg',
                         fit: BoxFit.cover,
                         alignment: const FractionalOffset(0.7, 0.3),),
                     ),
                     const SizedBox(width: 10,),

                     LongerContainer(
                       title: 'Abs and Legs Workout',
                       noOfCalories: 248,
                       theTime: 20,
                       myImage: Image.asset('assets/work.jpg',
                         fit: BoxFit.cover,
                         alignment: const FractionalOffset(0.7, 0.3),),
                     ),
                   ]
                 ),
               ),
            ],
          ),
        ),
      )),
    );
  }
}
