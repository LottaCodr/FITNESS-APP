import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/MyTextField.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      ClipOval(
                        clipBehavior: Clip.hardEdge,
                        child: CircleAvatar(
                          radius: 60,
                          child: Image.asset(
                            'assets/nin.jpg',
                            fit: BoxFit.cover,
                            width: 160,
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          height: 33,
                          width: 33,
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                color: Colors.red,
                                blurRadius: 7,
                                spreadRadius: 3)
                          ], shape: BoxShape.circle, color: Colors.white),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Your Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  icon: Icons.edit,
                  label: 'First Name',
                  myTextType: TextInputType.text,
                  myTextController: firstnameController,
                  hint: '',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                    icon: Icons.edit,
                    label: 'Last Name',
                    myTextType: TextInputType.text,
                    myTextController: lastNameController,
                    hint: '',
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                    icon: Icons.edit,
                    label: 'Email Address',
                    myTextType: TextInputType.emailAddress,
                    myTextController: emailController,
                    hint: '',
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                  icon: Icons.edit,
                  label: 'Phone Number',
                  myTextType: TextInputType.phone,
                  myTextController: phoneController,
                  hint: '',
                  obscureText: false,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Save')),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Cancel')),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Revert')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
