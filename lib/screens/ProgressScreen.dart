import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/my_calendar.dart';
import 'package:the_trainer/widgets/the_card.dart';
import 'package:the_trainer/widgets/the_circle.dart';

import '../widgets/myHeatmap.dart';

class WorkoutInfo extends StatefulWidget {
  const WorkoutInfo({Key? key}) : super(key: key);

  @override
  State<WorkoutInfo> createState() => _WorkoutInfoState();
}

class _WorkoutInfoState extends State<WorkoutInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'Progress',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'All',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Week',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Month',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                child: MyHeatMap()
                //WorkOutCalendarContainer(),
              ),
              //the calendar

              const SizedBox(
                height: 5,
              ),
              //for the 3 circles
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: const [
                    TheCircle(
                        mainText: '11',
                        the2ndText: 'workout',
                        lastText: 'completed'),
                    TheCircle(
                        mainText: '9',
                        the2ndText: 'training',
                        lastText: 'hours'),
                    TheCircle(
                        mainText: '897',
                        the2ndText: 'calories',
                        lastText: 'burned'),
                  ],
                ),
              ),

              //container for the workouts
              const TheCard(
                workout: "Stretching",
                percentage: 73,
                buttonName: "Continue",
                caloriesValue: 93,
              ),
              const TheCard(
                workout: "Total Body",
                percentage: 78,
                buttonName: "Start Again",
                caloriesValue: 217,
              ),
              const TheCard(
                workout: "Yoga",
                percentage: 73,
                buttonName: "Start Again",
                caloriesValue: 163,
              )
            ],

            //for the activities
          ),
        ),
      ),
    );
  }
}
