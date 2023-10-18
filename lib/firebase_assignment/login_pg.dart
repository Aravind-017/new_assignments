import 'package:flutter/material.dart';

class phoneAuth extends StatefulWidget {
  const phoneAuth({super.key});

  @override
  State<phoneAuth> createState() => _phoneAuthState();
}

class _phoneAuthState extends State<phoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Authentication"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(
                labelText: "phone"
              ),),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                labelText:
              ),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("Sign in"))
            ],
          ),
        ),
      ),
    );
  }
}
