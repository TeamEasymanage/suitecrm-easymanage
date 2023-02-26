import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AclActions> aclActionsFromJson(String str) => 
    List<AclActions>.from(json.decode(str).map((x) => AclActions.fromJson(x))); 
 
String aclActionsToJson(List<AclActions> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AclActions { 
  AclActions({ 
		required this.id, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.name, 
		this.category, 
		this.acltype, 
		this.aclaccess, 
		this.deleted, 
  }); 
 
		String id; 
		String? dateEntered; 
		String? dateModified; 
		String? modifiedUserId; 
		String? createdBy; 
		String? name; 
		String? category; 
		String? acltype; 
		int? aclaccess; 
		String? deleted; 
 
  factory AclActions.fromJson(Map<String, dynamic> json) => AclActions( 
		id: json["id"], 
		dateEntered: json["dateEntered"], 
		dateModified: json["dateModified"], 
		modifiedUserId: json["modifiedUserId"], 
		createdBy: json["createdBy"], 
		name: json["name"], 
		category: json["category"], 
		acltype: json["acltype"], 
		aclaccess: json["aclaccess"], 
		deleted: json["deleted"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"dateEntered": dateEntered, 
		"dateModified": dateModified, 
		"modifiedUserId": modifiedUserId, 
		"createdBy": createdBy, 
		"name": name, 
		"category": category, 
		"acltype": acltype, 
		"aclaccess": aclaccess, 
		"deleted": deleted, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Date Entered": dateEntered, 
		"Date Modified": dateModified, 
		"Modified User Id": modifiedUserId, 
		"Created By": createdBy, 
		"Name": name, 
		"Category": category, 
		"Acltype": acltype, 
		"Aclaccess": aclaccess, 
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
		"Date Entered": dateEntered, 
		"Date Modified": dateModified, 
		"Modified User Id": modifiedUserId, 
		"Created By": createdBy, 
		"Name": name, 
		"Category": category, 
		"Acltype": acltype, 
		"Aclaccess": aclaccess, 
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
 
        case "Aclaccess": { ret = getEmFmtNumOpt(val); } break;	 
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
class AclActionsWoKey { 
  AclActionsWoKey({ 
	//		required this.id, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.name, 
		this.category, 
		this.acltype, 
		this.aclaccess, 
		this.deleted, 
  }); 
 
	//		String id; 
		String? dateEntered; 
		String? dateModified; 
		String? modifiedUserId; 
		String? createdBy; 
		String? name; 
		String? category; 
		String? acltype; 
		int? aclaccess; 
		String? deleted; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"dateEntered": dateEntered, 
		"dateModified": dateModified, 
		"modifiedUserId": modifiedUserId, 
		"createdBy": createdBy, 
		"name": name, 
		"category": category, 
		"acltype": acltype, 
		"aclaccess": aclaccess, 
		"deleted": deleted, 
      }; 
 
} 
*/ 
 
