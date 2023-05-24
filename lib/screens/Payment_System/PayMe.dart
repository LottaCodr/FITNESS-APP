import 'package:flutter/material.dart';

class PayMe extends StatefulWidget {
  const PayMe({Key? key}) : super(key: key);

  @override
  State<PayMe> createState() => _PayMeState();
}

class _PayMeState extends State<PayMe> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 215,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Image.asset('assets/mcard.gif',
                  fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Add New Card',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Name on card',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 100),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Card number',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 100),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Expiry date',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 20),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      //shape: OutlinedBorder ,
                      checkColor: Colors.white,
                      activeColor: Colors.red,
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                      }),
                  const Text(
                    'Save Card Details',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'N22,700',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'View details',
                          style: TextStyle(color: Colors.grey
                              //fontSize: 20,
                              ),
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text('Pay'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
