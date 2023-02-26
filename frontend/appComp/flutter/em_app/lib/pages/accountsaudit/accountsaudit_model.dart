import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AccountsAudit> accountsAuditFromJson(String str) => 
    List<AccountsAudit>.from(json.decode(str).map((x) => AccountsAudit.fromJson(x))); 
 
String accountsAuditToJson(List<AccountsAudit> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AccountsAudit { 
  AccountsAudit({ 
		required this.id, 
		this.parentId, 
		this.dateCreated, 
		this.createdBy, 
		this.fieldName, 
		this.dataType, 
		this.beforeValueString, 
		this.afterValueString, 
		this.beforeValueText, 
		this.afterValueText, 
  }); 
 
		String id; 
		String? parentId; 
		String? dateCreated; 
		String? createdBy; 
		String? fieldName; 
		String? dataType; 
		String? beforeValueString; 
		String? afterValueString; 
		String? beforeValueText; 
		String? afterValueText; 
 
  factory AccountsAudit.fromJson(Map<String, dynamic> json) => AccountsAudit( 
		id: json["id"], 
		parentId: json["parentId"], 
		dateCreated: json["dateCreated"], 
		createdBy: json["createdBy"], 
		fieldName: json["fieldName"], 
		dataType: json["dataType"], 
		beforeValueString: json["beforeValueString"], 
		afterValueString: json["afterValueString"], 
		beforeValueText: json["beforeValueText"], 
		afterValueText: json["afterValueText"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"parentId": parentId, 
		"dateCreated": dateCreated, 
		"createdBy": createdBy, 
		"fieldName": fieldName, 
		"dataType": dataType, 
		"beforeValueString": beforeValueString, 
		"afterValueString": afterValueString, 
		"beforeValueText": beforeValueText, 
		"afterValueText": afterValueText, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Parent Id": parentId, 
		"Date Created": dateCreated, 
		"Created By": createdBy, 
		"Field Name": fieldName, 
		"Data Type": dataType, 
		"Before Value String": beforeValueString, 
		"After Value String": afterValueString, 
		"Before Value Text": beforeValueText, 
		"After Value Text": afterValueText, 
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
		"Parent Id": parentId, 
		"Date Created": dateCreated, 
		"Created By": createdBy, 
		"Field Name": fieldName, 
		"Data Type": dataType, 
		"Before Value String": beforeValueString, 
		"After Value String": afterValueString, 
		"Before Value Text": beforeValueText, 
		"After Value Text": afterValueText, 
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
class AccountsAuditWoKey { 
  AccountsAuditWoKey({ 
	//		required this.id, 
		this.parentId, 
		this.dateCreated, 
		this.createdBy, 
		this.fieldName, 
		this.dataType, 
		this.beforeValueString, 
		this.afterValueString, 
		this.beforeValueText, 
		this.afterValueText, 
  }); 
 
	//		String id; 
		String? parentId; 
		String? dateCreated; 
		String? createdBy; 
		String? fieldName; 
		String? dataType; 
		String? beforeValueString; 
		String? afterValueString; 
		String? beforeValueText; 
		String? afterValueText; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"parentId": parentId, 
		"dateCreated": dateCreated, 
		"createdBy": createdBy, 
		"fieldName": fieldName, 
		"dataType": dataType, 
		"beforeValueString": beforeValueString, 
		"afterValueString": afterValueString, 
		"beforeValueText": beforeValueText, 
		"afterValueText": afterValueText, 
      }; 
 
} 
*/ 
 
