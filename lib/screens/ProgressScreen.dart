import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/body_features_toggle.dart';

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
                    // height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800],
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      //for search box
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800], shape: BoxShape.circle),
                    child: Icon(Icons.filter_alt_rounded),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[800], shape: BoxShape.circle),
                    child: const Icon(Icons.star),
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
              const SizedBox(height: 15,),


 Container(child: BodyFeaturesToggle(),)
            ],
          ),
        ),
      )),
    );
  }
}
