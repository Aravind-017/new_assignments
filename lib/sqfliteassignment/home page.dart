import 'package:flutter/material.dart';

class sqhome extends StatelessWidget {
  const sqhome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Welcome',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 50),),
            ),
          ],
        ),
      ),
    );
  }
}
