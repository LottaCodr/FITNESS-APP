import 'package:flutter/material.dart';

class TheList extends StatelessWidget {
  final IconData myIcon;
  final String title;
  final String subTitle;
  final String trailing;

  const TheList(
      {Key? key,
      required this.myIcon,
      required this.title,
      required this.subTitle,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(15)),
        child: Icon(myIcon),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      trailing: Text(
        trailing,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
