import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AmProjecttemplatesContacts1C> amProjecttemplatesContacts1CFromJson(String str) => 
    List<AmProjecttemplatesContacts1C>.from(json.decode(str).map((x) => AmProjecttemplatesContacts1C.fromJson(x))); 
 
String amProjecttemplatesContacts1CToJson(List<AmProjecttemplatesContacts1C> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AmProjecttemplatesContacts1C { 
  AmProjecttemplatesContacts1C({ 
		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesIda, 
		this.contactsIdb, 
  }); 
 
		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesIda; 
		String? contactsIdb; 
 
  factory AmProjecttemplatesContacts1C.fromJson(Map<String, dynamic> json) => AmProjecttemplatesContacts1C( 
		id: json["id"], 
		dateModified: json["dateModified"], 
		deleted: json["deleted"], 
		amProjecttemplatesIda: json["amProjecttemplatesIda"], 
		contactsIdb: json["contactsIdb"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesIda": amProjecttemplatesIda, 
		"contactsIdb": contactsIdb, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Date Modified": dateModified, 
		"Deleted": deleted, 
		"Am Projecttemplates Ida": amProjecttemplatesIda, 
		"Contacts Idb": contactsIdb, 
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
		"Date Modified": dateModified, 
		"Deleted": deleted, 
		"Am Projecttemplates Ida": amProjecttemplatesIda, 
		"Contacts Idb": contactsIdb, 
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
class AmProjecttemplatesContacts1CWoKey { 
  AmProjecttemplatesContacts1CWoKey({ 
	//		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesIda, 
		this.contactsIdb, 
  }); 
 
	//		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesIda; 
		String? contactsIdb; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesIda": amProjecttemplatesIda, 
		"contactsIdb": contactsIdb, 
      }; 
 
} 
*/ 
 
