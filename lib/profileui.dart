import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile(),
  ));
}

class profile extends StatelessWidget {
  @override
  var itemnames = ['settings'];

  // var icons = ['Icons.settings']
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.arrow_left,color:Colors.black),
          leading: const BackButton(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.verified,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.circleUser,
                    color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.sun, color: Colors.black))
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Column(
              children: [
                Container(
                  child: const CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=765&q=80"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                    const SizedBox(width: 30),
                    FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
                    const SizedBox(width: 30),
                    FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
                    const SizedBox(width: 30),
                    FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                    const SizedBox(width: 30),
                    FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue,),
                    const SizedBox(width: 30),
                  ],
                ),
                Container(
                    child: const ListTile(
                      title: Center(
                          child: Text("ARAVIND SHAJI", style: TextStyle(fontSize: 40))),
                      hoverColor: Colors.greenAccent,
                      subtitle: Center(
                          child: Text(
                            "@aravind017",
                          )),
                    )),
                Container(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.pen,
                        size: 20,
                        color: Colors.black,
                      ),
                    )),
                Container(
                    height: 80,
                    child: const Center(
                        child: Text(
                          "Flutter App Developer and Open Source Contributer",
                          style: TextStyle(fontSize: 23),
                        ))),
                SizedBox(height: 8),
                Expanded(
                    child: ListView(children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5.0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            title: Text("Privacy"),
                            leading: Icon(Icons.privacy_tip),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 25),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5.0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            title: Text("Purchase History"),
                            leading: Icon(Icons.history),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 25),
                      Container(
                          decoration:BoxDecoration(
                              border:Border.all(width:5.0,color:Colors.grey),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: ListTile(
                            title: Text("Help & Support"),
                            leading: Icon(Icons.help),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 25),
                      Container(
                          decoration:BoxDecoration(
                              border:Border.all(width:5.0,color:Colors.grey),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: ListTile(
                            title: Text("Settings"),
                            leading: Icon(Icons.settings),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 25),
                      Container(
                          decoration:BoxDecoration(
                              border:Border.all(width:5.0,color:Colors.grey),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: ListTile(
                            title: Text("Invite a Friend"),
                            leading: Icon(Icons.person_add_alt_1_rounded),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 25),
                      Container(
                          decoration:BoxDecoration(
                              border:Border.all(width:5.0,color:Colors.grey),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: ListTile(
                            title: Text("Logout"),
                            leading: Icon(Icons.logout),
                            trailing: FaIcon(FontAwesomeIcons.arrowRight),
                          )),
                      SizedBox(height: 50
                      ),
                    ]))
              ],
            )));
  }
}

Widget Socialmediabutton(IconData icon) => CircleAvatar(
    radius: 20,
    child: Center(
      child: Icon(icon, size: 10),
    ));