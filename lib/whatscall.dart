import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: call(),));
}
class call extends StatelessWidget {
  var name = ['Create call link','Appukuttan(2)','Akshay','Ron','Amal','Rejo','Abhi','Parthan','Jishnu','Gokul'];
  var image=['assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg',
    'assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.jpg','assets/images/pr.png'];

  var msg=['Share a link for your WhatsApp call','45 minutes ago','Today,1:35 am','Today,3:00 am','Today,4:36 am','Today,8:27 am',' Today,9:45 am','Today,12:35 pm','Today,1:00 pm ', 'Toady,2:45 pm'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
              title: Text(name[index]),
              subtitle: Text(msg[index]),
              leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
              trailing: Icon(Icons.phone,color: Colors.green,)
          ),
        )),
      ),
    );
  }
}