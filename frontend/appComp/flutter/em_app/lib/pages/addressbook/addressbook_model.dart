import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AddressBook> addressBookFromJson(String str) => 
    List<AddressBook>.from(json.decode(str).map((x) => AddressBook.fromJson(x))); 
 
String addressBookToJson(List<AddressBook> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AddressBook { 
  AddressBook({ 
		required this.assignedUserId, 
		this.bean, 
		this.beanId, 
  }); 
 
		String assignedUserId; 
		String? bean; 
		String? beanId; 
 
  factory AddressBook.fromJson(Map<String, dynamic> json) => AddressBook( 
		assignedUserId: json["assignedUserId"], 
		bean: json["bean"], 
		beanId: json["beanId"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"assignedUserId": assignedUserId, 
		"bean": bean, 
		"beanId": beanId, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Assigned User Id": assignedUserId, 
		"Bean": bean, 
		"Bean Id": beanId, 
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
		"Assigned User Id": assignedUserId, 
		"Bean": bean, 
		"Bean Id": beanId, 
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
class AddressBookWoKey { 
  AddressBookWoKey({ 
	//		required this.assignedUserId, 
		this.bean, 
		this.beanId, 
  }); 
 
	//		String assignedUserId; 
		String? bean; 
		String? beanId; 
 
  Map<String, dynamic> toJson() => { 
	//		"assignedUserId": assignedUserId, 
		"bean": bean, 
		"beanId": beanId, 
      }; 
 
} 
*/ 
 
