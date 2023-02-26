import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AmProjecttemplates> amProjecttemplatesFromJson(String str) => 
    List<AmProjecttemplates>.from(json.decode(str).map((x) => AmProjecttemplates.fromJson(x))); 
 
String amProjecttemplatesToJson(List<AmProjecttemplates> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AmProjecttemplates { 
  AmProjecttemplates({ 
		required this.id, 
		this.name, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.description, 
		this.deleted, 
		this.assignedUserId, 
		this.status, 
		this.priority, 
		this.overrideBusinessHours, 
  }); 
 
		String id; 
		String? name; 
		String? dateEntered; 
		String? dateModified; 
		String? modifiedUserId; 
		String? createdBy; 
		String? description; 
		String? deleted; 
		String? assignedUserId; 
		String? status; 
		String? priority; 
		String? overrideBusinessHours; 
 
  factory AmProjecttemplates.fromJson(Map<String, dynamic> json) => AmProjecttemplates( 
		id: json["id"], 
		name: json["name"], 
		dateEntered: json["dateEntered"], 
		dateModified: json["dateModified"], 
		modifiedUserId: json["modifiedUserId"], 
		createdBy: json["createdBy"], 
		description: json["description"], 
		deleted: json["deleted"], 
		assignedUserId: json["assignedUserId"], 
		status: json["status"], 
		priority: json["priority"], 
		overrideBusinessHours: json["overrideBusinessHours"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"name": name, 
		"dateEntered": dateEntered, 
		"dateModified": dateModified, 
		"modifiedUserId": modifiedUserId, 
		"createdBy": createdBy, 
		"description": description, 
		"deleted": deleted, 
		"assignedUserId": assignedUserId, 
		"status": status, 
		"priority": priority, 
		"overrideBusinessHours": overrideBusinessHours, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Name": name, 
		"Date Entered": dateEntered, 
		"Date Modified": dateModified, 
		"Modified User Id": modifiedUserId, 
		"Created By": createdBy, 
		"Description": description, 
		"Deleted": deleted, 
		"Assigned User Id": assignedUserId, 
		"Status": status, 
		"Priority": priority, 
		"Override Business Hours": overrideBusinessHours, 
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
		"Name": name, 
		"Date Entered": dateEntered, 
		"Date Modified": dateModified, 
		"Modified User Id": modifiedUserId, 
		"Created By": createdBy, 
		"Description": description, 
		"Deleted": deleted, 
		"Assigned User Id": assignedUserId, 
		"Status": status, 
		"Priority": priority, 
		"Override Business Hours": overrideBusinessHours, 
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
class AmProjecttemplatesWoKey { 
  AmProjecttemplatesWoKey({ 
	//		required this.id, 
		this.name, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.description, 
		this.deleted, 
		this.assignedUserId, 
		this.status, 
		this.priority, 
		this.overrideBusinessHours, 
  }); 
 
	//		String id; 
		String? name; 
		String? dateEntered; 
		String? dateModified; 
		String? modifiedUserId; 
		String? createdBy; 
		String? description; 
		String? deleted; 
		String? assignedUserId; 
		String? status; 
		String? priority; 
		String? overrideBusinessHours; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"name": name, 
		"dateEntered": dateEntered, 
		"dateModified": dateModified, 
		"modifiedUserId": modifiedUserId, 
		"createdBy": createdBy, 
		"description": description, 
		"deleted": deleted, 
		"assignedUserId": assignedUserId, 
		"status": status, 
		"priority": priority, 
		"overrideBusinessHours": overrideBusinessHours, 
      }; 
 
} 
*/ 
 
