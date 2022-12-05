

import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formkey=GlobalKey<FormState>();
  final TextEditingController name=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
      title: const Text("data"),
     
      ), 
      body: SingleChildScrollView(
        child:Form(
          key:_formkey,
        child: Column(
          children: [
            Center(
            child:Container(
              padding: const EdgeInsets.only(top:30),
              child:const Text("Registration"),


            )
        ),
        Container(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: name,
            validator: (value){
              if(value!.isEmpty){
                return"Name cannot be empty";
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text("Name")
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            validator: (value){
              if(value!.isEmpty){
                return"Name cannot be empty";
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text("Name")
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            controller: password,
            validator: (value){
              if(value!.isEmpty){
                return"Name cannot be empty";
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text("Name")
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25),
          child:ElevatedButton(onPressed: () {},
        child: const Text("Submit"),

          )
        )
        ],
        
          
        ),
      ),
 ));
  }
}