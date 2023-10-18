import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_assignments/sqfliteassignment/login%20page.dart';
import 'package:new_assignments/sqfliteassignment/sqlhelper.dart';

class sqreg extends StatefulWidget {
  const sqreg({super.key});

  @override
  State<sqreg> createState() => _sqregState();
}

class _sqregState extends State<sqreg> {

  var formkey = GlobalKey<FormState>();
  var uname = TextEditingController();
  var uemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  bool passvisibility1 = true;
  bool passvisibility2 = true;

  void newuser(String name, String email ,String password) async{
    var id = await SQLHelper.newuser(name,email,password);
    if(id != null)
    {
      Navigator.pushReplacement((context), MaterialPageRoute(builder: (context)=> sqlogin()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not Success')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Sign Up',
                  style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: uname,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: uemail,
                  decoration: InputDecoration(
                      hintText: 'Email id',
                      prefixIcon: Icon(Icons.contact_mail_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (username) {
                    if (username!.isEmpty || !username.contains("@") || !username.contains(".")) {
                      return "Fields are empty or Invalid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pass,
                  obscuringCharacter: "*",
                  obscureText: passvisibility1,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility1 == true) {
                                passvisibility1 = false;
                              } else {
                                passvisibility1 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility1 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (pass1){
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Fields are empty or Password length must be greaterthan 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: cpass,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility2 == true) {
                                passvisibility2 = false;
                              } else {
                                passvisibility2 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (pass2) {
                    if (pass2!.isEmpty || pass2.length < 6) {
                      return "Password length must be greater than 6";
                    } else if(pass.text != cpass.text) {
                      return "Password not matching";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
        final valid = formkey.currentState!.validate();
        if (valid) {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => sqlogin()));
        } else {
          Fluttertoast.showToast(
              msg: "Invalid Username or Password",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.blue,
              textColor: Colors.black,
              fontSize: 16.0);
        }
              },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(250, 50),
                  ),
                  child: Text('Sign in')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => sqlogin()));
                  },
                  child: const Text("Already have an account ? Login"))
            ],
          ),
        ),
      ),
    );
  }
}
