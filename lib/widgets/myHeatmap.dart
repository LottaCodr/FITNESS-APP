import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  const MyHeatMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: HeatMapCalendar(
        colorMode: ColorMode.opacity,
        defaultColor: Colors.white,
        flexible: true,
        borderRadius: 10,
        textColor: Colors.black,
        initDate: DateTime.now(),
        margin: const EdgeInsets.all(3),
        showColorTip: false,

        datasets: {
          DateTime(2023, 5, 11): 6,
          DateTime(2023, 5, 12): 1,
          DateTime(2023, 5, 13): 12,
          DateTime(2023, 5, 14): 6,
          DateTime(2023, 5, 15): 10,
          DateTime(2023, 5, 17): 13,
          DateTime(2023, 5, 18): 13,
          DateTime(2023, 5, 19): 13,
          DateTime(2023, 5, 20): 13,
          DateTime(2023, 5, 21): 10,
          DateTime(2023, 5, 22): 13,
          DateTime(2023, 5, 23): 3,
          DateTime(2023, 5, 24): 7,
          DateTime(2023, 5, 25): 10,
          DateTime(2023, 5, 26): 13,
          DateTime(2023, 5, 27): 6,

        },
        colorsets: const {

          1: Color.fromARGB(20, 0, 220, 0),
          2: Color.fromARGB(40, 0, 220,  0),
          3: Color.fromARGB(60, 0, 220,  0),
          4: Color.fromARGB(80, 0, 220,  0),
          5: Color.fromARGB(100, 0, 220,  0),
          6: Color.fromARGB(120, 0, 220,  0),
          7: Color.fromARGB(140, 0, 220,  0),
          8: Color.fromARGB(160, 0, 220,  0),
          9: Color.fromARGB(180, 0, 220,  0),
          10: Color.fromARGB(220, 0, 220,  0),
          11: Color.fromARGB(225, 0, 220,  0),
          12: Color.fromARGB(230, 0, 220,  0),
          13: Color.fromARGB(235, 0, 220,  0),
          14: Color.fromARGB(255, 0, 220, 0),

        },
        // onClick: (value) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
        // },
      ),
    );
  }
}
