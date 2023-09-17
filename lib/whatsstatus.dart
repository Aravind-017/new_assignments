import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: status(),));
}
class status extends StatelessWidget {
  var name = ['My status','Akhil','Akshay','Ron','Amal','Rejo','Abhi','Parthan','Jishnu','Gokul'];
  var image=['assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg',
    'assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.png'];
  var msg=['Tap to add status update','45 minutes ago','Today,1:35 am','Today,3:00 am','Today,4:36 am','Today,8:27 am',' Today,9:45 am','Today,12:35 pm','Today,1:00 pm ', 'Toady,2:45 pm'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(msg[index]),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage(image[index]),radius: 18,),
            ),
          ),
        )),
      ),
    );
  }
}