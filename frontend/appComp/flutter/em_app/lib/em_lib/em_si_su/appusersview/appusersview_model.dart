import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AppUsersView> appUsersViewFromJson(String str) => 
    List<AppUsersView>.from(json.decode(str).map((x) => AppUsersView.fromJson(x))); 
 
String appUsersViewToJson(List<AppUsersView> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AppUsersView { 
  AppUsersView({ 
		required this.username, 
		this.password, 
		this.email, 
		this.roles, 
  }); 
 
		String username; 
		String? password; 
		String? email; 
		String? roles; 
 
  factory AppUsersView.fromJson(Map<String, dynamic> json) => AppUsersView( 
		username: json["username"], 
		password: json["password"], 
		email: json["email"], 
		roles: json["roles"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"username": username, 
		"password": password, 
		"email": email, 
		"roles": roles, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Username": username, 
		"Password": password, 
		"Email": email, 
		"Roles": roles, 
      }; 
 
  List<List<String>> toListLabVal() { 
    List<List<String>> dataSet = []; 
 
    toMapLabelVal().forEach((key, value) { 
      List<String> dataSet1 = []; 
      dataSet1.add(key); 
      dataSet1.add(getKeyValFmt(key,value)); 
      dataSet.add(dataSet1); 
    }); 
    return dataSet; 
  } 
 
 /* ------------------------------------------- 
  Code-Help [CH] : Hide Fields Helper 
 		To Hide Fields From Display ListView And Detail Record 
 		1-Uncomment and USE Below Functions 
 		2-Comment out the fields to hide in 1st function toMapLabelValHide01 below 
 		3-Use them in _data_table.dart and _lib.dart, Find/Replace respective toMapLabelVal() and toListLabVal() 
  ------------------------------------------- */ 
 
 /* 
  Map<String, dynamic> toMapLabelValHide01() => { 
		"Username": username, 
		"Password": password, 
		"Email": email, 
		"Roles": roles, 
      }; 
 
  List<List<String>> toListLabValHide01() { 
    List<List<String>> dataSet = []; 
 
    toMapLabelValHide01().forEach((key, value) { 
      List<String> dataSet1 = []; 
      dataSet1.add(key); 
      dataSet1.add(getKeyValFmt(key,value)); 
      dataSet.add(dataSet1); 
    }); 
    return dataSet; 
  } 
 
 */ 
 
String getKeyValFmt (String? key, dynamic val) { 
String ret = ""; 
        switch(key) { 
        // Num Cur Fmt Columns, if any  
 
        default: { 
        ret = val.toString(); 
        } 
        } 
        return ret; 
} 
 
} 
 
// -----------------------------------------------------------------  
//Model For Use in input form dart, when key should not be passed, it is @GeneratedValue on API side  
//Uncomment and Use below 
 
/* 
class AppUsersViewWoKey { 
  AppUsersViewWoKey({ 
	//		required this.username, 
		this.password, 
		this.email, 
		this.roles, 
  }); 
 
	//		String username; 
		String? password; 
		String? email; 
		String? roles; 
 
  Map<String, dynamic> toJson() => { 
	//		"username": username, 
		"password": password, 
		"email": email, 
		"roles": roles, 
      }; 
 
} 
*/ 
 
