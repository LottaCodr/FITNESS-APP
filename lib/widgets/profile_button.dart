import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const ProfileButton({Key? key,
    required this.title,
    required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.white.withOpacity(0.1)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
              child:  ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(
                  icon
                ),
                title: Text(title),
                trailing: Icon(Icons.arrow_forward_ios),
              )),
        ),
       const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}