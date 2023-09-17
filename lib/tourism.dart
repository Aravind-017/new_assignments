import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: tourism(),));
}

class tourism extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100, top: 100),
              child: Image(image: AssetImage("assets/images/img_1.png"),height: 200,width: 200,),
            ),
            SizedBox(height: 50,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(150, 50),
            ),
              onPressed: (){}, child: Text('Log in'),),
            SizedBox(height: 20,),
            Text('-or-'),
            SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: CupertinoColors.systemBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(350, 50),
            ),
              onPressed: (){}, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Login with FaceBook'), // <-- Text
                  SizedBox(
                    width: 5,
                  ),
                  Icon( // <-- Icon
                    Icons.facebook,
                    size: 24.0,
                  ),
                ],
              ),),
            SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(350, 50),
            ),
                onPressed: (){}, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Login with Twitter'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.transfer_within_a_station,
                    size: 24.0,
                  ),
                ],
              ), ),
            SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(350, 50),
            ),
              onPressed: (){}, child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Login with Google'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.transfer_within_a_station,
                    size: 24.0,
                  ),
                ],
              ),),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
