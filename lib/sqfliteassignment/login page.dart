import 'package:flutter/material.dart';
import 'package:new_assignments/sqfliteassignment/home%20page.dart';

class sqlogin extends StatefulWidget {

  @override
  State<sqlogin> createState() => _sqloginState();
}

class _sqloginState extends State<sqlogin> {
  var formkey = GlobalKey<FormState>();
  bool passwordvisibility = true;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Sign In',
                style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Text('Please verfiy your account here'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email id',
                  prefixIcon: Icon(Icons.contact_mail_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => sqhome()));
            },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(250, 50),
                ),
                child: Text('Sign in')),
          ],
        ),
      ),
    );
  }
}
