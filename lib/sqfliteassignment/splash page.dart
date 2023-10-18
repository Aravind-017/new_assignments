import 'package:flutter/material.dart';
import 'package:new_assignments/sqfliteassignment/login%20page.dart';
import 'package:new_assignments/sqfliteassignment/registration%20page.dart';

void main(){
  runApp(MaterialApp(home: sqsplash(),));
}
class sqsplash extends StatelessWidget {
  const sqsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hello",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Please verify your account here!'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> sqreg()));
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(250, 50),
                ),
                child: Text('Sign Up')),
            SizedBox(height: 10,),
            Text('-or-'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> sqlogin()));
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(250, 50),
                ),
                child: Text('Log In')),
          ],
        ),
      ),
    );
  }
}
