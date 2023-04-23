import 'dart:core';
import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/progressbar.dart';
import '../colors.dart';

class TheCard extends StatelessWidget {
  final String workout;
  final int percentage;
  final String buttonName;
  final int caloriesValue;

  const TheCard(
      {Key? key,
      required this.workout,
      required this.percentage,
      required this.buttonName,
      required this.caloriesValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                workout,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.water_drop),
                      Text('$caloriesValue cal'),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.timer_outlined),
                          Text('32 mins')
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Jan 28, 2023',
            style: TextStyle(
              fontSize: 14,
              color: AppColor.homePagePlanColor,
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$percentage% Completed',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.homePageContainerTextBig,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // const
                  const SizedBox(
                    width: 150,
                    height: 10,
                    child: VerticalProgressBar(progress: 0.5),
                  )
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20)))),
                onPressed: () {},
                child: Text(buttonName),
              ),
            ],
          )
        ],
      ),
    );
  }
}
