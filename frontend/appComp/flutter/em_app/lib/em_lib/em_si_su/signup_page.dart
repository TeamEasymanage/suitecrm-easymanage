import 'package:em_app/em_lib/hivedb/models/emuser.dart';
import 'package:em_app/main.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:em_app/em_global.dart';

import 'appusersview/appusersview_model.dart';
import 'appusersview/appusersview_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formkey = GlobalKey<FormState>();

  String emUserName = "";
  String emMobile = "";
  String emEmail = "";
  String emUserId = "";
  String emPassword = "";
  String confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: 
      //isAppFESecure ? const Center(child: Text("Sign-Up Unavailable when App is run in secure mode.")) :
      Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.25,
                child: SingleChildScrollView(
                  child: Form(
                      key: formkey,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                emUserName = value;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'UserName',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Some Text";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                emPassword = value;
                              });
                            },
                            obscureText: true,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Password',
                            ),
                            validator: (value) {
                              if (value!.length < 4) {
                                return "Enter 4 character password";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                confirmPassword = value;
                              });
                            },
                            obscureText: true,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Confirm Password',
                            ),
                            validator: (value) {
                              if (value!.length < 4) {
                                return "Enter 4 character password";
                              } else if (value != emPassword) {
                                return "Passwords do not match";
                              }
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.25,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  // Validate returns true if the form is valid, or false otherwise.
                                  if (formkey.currentState!.validate()) {
                                    //The form is valid
                                    //Lets save the user in Hive database.

                          String apiMessage = ""; 

                          // ===== Begin Table-1: Model Assign And Create Service Call 
 
                          AppUsersView newAppUsersView = AppUsersView( 
					   username: emUserName , 
					   password: emPassword , 
					   email: emEmail , 
					   roles: 'USER' , 
							  ); 
 
                          await AppUsersViewService.AppUsersViewCreate( 
                                  newAppUsersView.toJson()) 
                              .then((message) { 
                                    apiMessage = message; 
                                    message == "User Added Successfully" 
                                        ? null	
                                        : showDialog(	
                                            context: context,	
                                            builder: (ctx) => AlertDialog(	
                                              title: const Text("Error Status"),	
                                              content: Text(message),	
                                              actions: <Widget>[	
                                                ElevatedButton(	
                                                  onPressed: () {	
                                                    Navigator.of(ctx).pop();	
                                                  },	
                                                  child: const Text("OK"),	
                                                ),	
                                              ],	
                                            ),	
                                          );	
	
                            final snackBar = SnackBar( 
                              //duration: const Duration(seconds: 10), //default is 4 sec 
                              padding: const EdgeInsets.symmetric( 
                                  horizontal: 50, vertical: 8), 
                              content: Text( 
                                message, 
                                //style: Theme.of(context).textTheme.headline5, 
                              ), 
                              backgroundColor: 
                                  message == "User Added Successfully" 
                                      ? Colors.green 
                                      : Colors.redAccent, 
                            ); 
                            ScaffoldMessenger.of(context) 
                                .showSnackBar(snackBar); 
	 
                          }); 
                          // ===== End Table-1: Model Assign And Create Service Call 

                                    String msg = "Error : -";

                                    try {
                            apiMessage == "User Added Successfully" 
                            ?  
                                      saveNewUser() : null ;
                                      msg = "User Created Successfully";
                                    } catch (e) {
                                      msg = msg + e.toString();
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text(msg)),
                                      );
                                    }

                                    if (msg == "User Created Successfully") {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute( 
                                      builder: (context) =>  const MyHomePage(),
                                    ),
                              (Route<dynamic> route) => false
                              );
                              /*

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MyHomePage()),
                                      );
                                      */
                                    }
                                  }
                                },
                                child: const Text('SIGN UP'),
                              ),
                            ],
                          ),
                        ),
                      ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveNewUser() async {
    var user = EmUser()
        ..emUserName = emUserName
        ..emMobile = emMobile
        ..emEmail = emMobile
        ..emUserId = emUserName
        ..emPassword = emPassword
        ..emAuthenticated = true;

    var usersBox = await Hive.openBox('users');
    await usersBox.put("userKey", user);
  }
}
