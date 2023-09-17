import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: DrawerUi(),));
}
class DrawerUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sunder Pichai",
            style: GoogleFonts.cabinCondensed(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 30),),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE93TOobMGDufIPWPRIZrSkDUUv7l7mGUbh7j7BA6trCKTfp4ojLODeAIGDtfRBIzMwmU&usqp=CAU",)),
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text("""
            Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai (/ˈsʊndɑːr pɪˈtʃaɪ/), is an American business executive.[6] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.[7]

            Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.

            Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[9]

            Pichai was included in Time's annual list of the 100 most influential people in 2016[10] and 2020.[11]

            Early life and education
            Pichai was born in Madurai, Tamil Nadu, India,[12][13][14] to a Tamil-speaking family. His mother, Lakshmi, was a stenographer, and his father, Regunatha Pichai, was an electrical engineer at GEC, the British conglomerate. His father also had a manufacturing plant that produced electrical components.[15][16]

            Pichai completed schooling in Jawahar Vidyalaya Senior Secondary School[17] in Ashok Nagar, Chennai and completed the Class XII from Vana Vani school at IIT Madras.[18][19] He earned his degree from IIT Kharagpur in metallurgical engineering and is a distinguished alumnus from that institution.[20] He holds an M.S. from Stanford University in materials science and engineering, and an MBA from the Wharton School of the University of Pennsylvania,[21] where he was named a Siebel Scholar and a Palmer Scholar respectively.[3][22][23]

            Career

            Pichai speaking at the 2015 Mobile World Congress in Barcelona, Spain
            Pichai worked in engineering and product management at Applied Materials and in management consulting at McKinsey & Company.[24] Pichai joined Google in 2004, where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome[25] and ChromeOS, as well as being largely responsible for Google Drive. He went on to oversee the development of other applications such as Gmail and Google Maps.[26][27] On November 19, 2009, Pichai gave a demonstration of ChromeOS; the Chromebook was released for trial and testing in 2011, and released to the public in 2012.[28] On May 20, 2010, he announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM.[29]

            On March 13, 2013, Pichai added Android to the list of Google products that he oversaw. Android was formerly managed by Andy Rubin.[30] He was a director of Jive Software from April 2011 to July 30, 2013.[31][32][33] Pichai was selected to become the next CEO of Google on August 10, 2015[34] after previously being appointed Product Chief by CEO, Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family.[35][33][36]

            Pichai had been suggested as a contender for Microsoft's CEO in 2014, a position that was eventually given to Satya Nadella.[37][38] In August 2017, Pichai drew publicity for firing a Google employee who wrote a ten-page manifesto criticizing the company's diversity policies.[39][40][41][42][43]

            In December 2017, Pichai was a speaker at the World Internet Conference in China, where he stated that "a lot of work Google does is to help Chinese companies. There are many small and medium-sized businesses in China who take advantage of Google to get their products to many other countries outside of China."[44][45]

            In December 2019, Pichai became the CEO of Alphabet Inc.[46][47] His compensation from the company topped \$200 million in 2022.[48]
            """),
          ))
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.orange,
                  Colors.yellow,
                  Colors.red,
                ],)
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
                ),
                title: Text("Sunder Pichai"),
                subtitle: Text("CEO of Alphabet Inx."),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
              ),
              ListTile(
                leading: Icon(Icons.leak_add),
                title: Text("Leads"),
              ),
              ListTile(
                leading: Icon(Icons.people_alt),
                title: Text("Clients"),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch_outlined),
                title: Text("Projects"),
              ),
              ListTile(
                leading: Icon(Icons.sports_handball_rounded),
                title: Text("Leads"),
              ),
              ListTile(
                leading: Icon(Icons.subject_sharp),
                title: Text("Subscription"),
              ),
              ListTile(
                leading: Icon(Icons.payments),
                title: Text("Payments"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Users"),
              ),
              ListTile(
                leading: Icon(Icons.library_add),
                title: Text("Library"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.white),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
