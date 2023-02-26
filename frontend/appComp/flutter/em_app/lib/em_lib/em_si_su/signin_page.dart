import 'dart:convert';

import 'package:em_app/em_global.dart';
import 'package:em_app/em_lib/hivedb/models/emuser.dart';
import 'package:em_app/main.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:http/http.dart' as http;

import 'appusersview/appusersview_model.dart';
import 'appusersview/appusersview_service.dart'; 

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formkey = GlobalKey<FormState>();

  String emUserName = "";
  String emMobile = "";
  String emEmail = "";
  String emUserId = "";
  String emPassword = "";
  //String confirmPassword = "";
  bool emAuthenticated = false;

  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
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

                                    String msg = "Error : -";

                                    try {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          duration: Duration(seconds: 1), 
                                          content: Text("Signing In, Please wait...")),
                                      );
                                      bool loginStatus = await checkSignIn(emUserName, emPassword);
                                      print("check done: "+ loginStatus.toString());
                                      if (loginStatus) {
                                      await saveNewUser();
                                      msg = "User Signed In Successfully";
                                      } else {
                                      msg = "Sign In Failed";
                                      }
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text(msg)),
                                      );
                                    } catch (e) {
                                      msg = msg + e.toString();
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text(msg)),
                                      );
                                    }

                                    if (msg == "User Signed In Successfully") {
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
                                child: const Text('SIGN IN'),
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

  Future<bool> checkSignIn(String username, String password) async {

    /* */
    //Way 1: To verify user via proper API call, when SelectWhere is set for permitAll()
    print("Calling Service : AppUsersViewSelectWhere ... "); 

    String errorMsg = timeErrStr; 
  
    List<AppUsersView> appUsersViewList = []; 
  
    String searchFilter = " username = '$username' and password = '$password' ";  
    String sortBy = "";  

    print("searchClause: [" +searchFilter +"]");  
    print("sortClause: [" +sortBy +"]");  
    await AppUsersViewService.AppUsersViewSelectWhere( 
      0 
      , searchFilter 
      , sortBy 
    ).then((getList) { 
      if (getList is String) { 
        setState(() { 
          errorMsg = getList; 
        }); 
      } else { 
      setState(() { 
        appUsersViewList = getList; 
      }); 
      }  
    }); 
    if (appUsersViewList.isEmpty) {
      return false;
    } else {
      return true;
    }
   /* */


    //Way 2: To verify user via dummy API call, spring security will check username password via basicAuth
    /*
  String myStatus = '';

    print("Calling Service : DummyAPICallToCheckAuth ... "); 
    await dummyAPICallToCheckAuth( 
      username, password 
    ).then((getStatus) { 
      print('printing: '+getStatus);
      setState(() {
        myStatus = getStatus;
      });
    }); 
    print("Got status" + myStatus);
    if (myStatus == '401') {
      return false;
    } else {
      return true;
    }
    */
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


  static Future dummyAPICallToCheckAuth( 
	  String emUserName, String emPassword
  	 ) async { 

 
    Map<String, String> siCheckHeaders = getEmApiHeadersUserAuth(emUserName, emPassword);

      if (isApiUseGrql == false) { 
    try { 
      final response = await http 
          .post(getEmUri(apiUrl, apiPathPrefix + "/dummy_api_call/ViewAll"  
          ), headers: siCheckHeaders); 

        print("Response Code: " + response.statusCode.toString()); 

        return response.statusCode.toString();  

    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 

      } else {

    String queryName = "DummyAPICallToCheckAuthViewAll"; 
    String queryParam = ""; 

    try {  
 
    String query = 
    r'''{"query":"{\t\n\t''' +queryName+' '+queryParam+ r''' { \n\t  dummyCol1 , \n\t dummyCol2  \n\t  \n\t} \n}"}'''; 
 
      Uri uri = getEmUri(apiUrlGrql, apiGrqlPathPrefix);  
 
       final response = await http.post(uri,  
          body: query, headers: siCheckHeaders);  
 
        print("Response Code: " + response.statusCode.toString()); 

        return response.statusCode.toString();  

    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  

      }

  }

}
