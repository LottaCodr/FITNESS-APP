import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //variable to hold the selected option
    String _selectedOption ='';

    List<String> _drowndownOptions = [
      '10/23',
      '11/23',
      '12/23',
      '1/24',
      '2/24',
      '3/24',
      '4/24',
      '5/24',
      '5/24',
    ];
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextField(
        //keyboardType: TextInputType.text,
        decoration: InputDecoration(
          // hintText: 'Expiry date',
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 20),
            borderRadius: BorderRadius.circular(20),
          ),

        ),
        readOnly: true,
        controller: TextEditingController(text: _selectedOption),
        // onTap: (){
        //   showDialog(context: context,
        //       builder: (BuildContext context){
        //         return AlertDialog(
        //           title: Text('Select a date'),
        //           content: DropdownButton(
        //               value: _selectedOption,
        //               items: _drowndownOptions.map((String option){
        //                 return DropdownMenuItem(
        //                     value: option,
        //                     child: Text(option));
        //               }).toList(),
        //               // onChanged: (String? newValue){
        //               //   setState(() {
        //               //     _selectedOption = newValue!;
        //               //     Navigator.pop(context);
        //               //   });
        //               // }
        //               ),
        //         );
        //       });
        // },
      ),
    )
    ;
  }
}
