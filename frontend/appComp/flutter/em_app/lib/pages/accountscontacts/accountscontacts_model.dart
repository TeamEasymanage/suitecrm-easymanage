import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AccountsContacts> accountsContactsFromJson(String str) => 
    List<AccountsContacts>.from(json.decode(str).map((x) => AccountsContacts.fromJson(x))); 
 
String accountsContactsToJson(List<AccountsContacts> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AccountsContacts { 
  AccountsContacts({ 
		required this.id, 
		this.contactId, 
		this.accountId, 
		this.dateModified, 
		this.deleted, 
  }); 
 
		String id; 
		String? contactId; 
		String? accountId; 
		String? dateModified; 
		String? deleted; 
 
  factory AccountsContacts.fromJson(Map<String, dynamic> json) => AccountsContacts( 
		id: json["id"], 
		contactId: json["contactId"], 
		accountId: json["accountId"], 
		dateModified: json["dateModified"], 
		deleted: json["deleted"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"contactId": contactId, 
		"accountId": accountId, 
		"dateModified": dateModified, 
		"deleted": deleted, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Contact Id": contactId, 
		"Account Id": accountId, 
		"Date Modified": dateModified, 
		"Deleted": deleted, 
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
		"Id": id, 
		"Contact Id": contactId, 
		"Account Id": accountId, 
		"Date Modified": dateModified, 
		"Deleted": deleted, 
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
class AccountsContactsWoKey { 
  AccountsContactsWoKey({ 
	//		required this.id, 
		this.contactId, 
		this.accountId, 
		this.dateModified, 
		this.deleted, 
  }); 
 
	//		String id; 
		String? contactId; 
		String? accountId; 
		String? dateModified; 
		String? deleted; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"contactId": contactId, 
		"accountId": accountId, 
		"dateModified": dateModified, 
		"deleted": deleted, 
      }; 
 
} 
*/ 
 
