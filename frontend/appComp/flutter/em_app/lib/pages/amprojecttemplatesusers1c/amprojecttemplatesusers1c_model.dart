import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AmProjecttemplatesUsers1C> amProjecttemplatesUsers1CFromJson(String str) => 
    List<AmProjecttemplatesUsers1C>.from(json.decode(str).map((x) => AmProjecttemplatesUsers1C.fromJson(x))); 
 
String amProjecttemplatesUsers1CToJson(List<AmProjecttemplatesUsers1C> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AmProjecttemplatesUsers1C { 
  AmProjecttemplatesUsers1C({ 
		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesIda, 
		this.usersIdb, 
  }); 
 
		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesIda; 
		String? usersIdb; 
 
  factory AmProjecttemplatesUsers1C.fromJson(Map<String, dynamic> json) => AmProjecttemplatesUsers1C( 
		id: json["id"], 
		dateModified: json["dateModified"], 
		deleted: json["deleted"], 
		amProjecttemplatesIda: json["amProjecttemplatesIda"], 
		usersIdb: json["usersIdb"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesIda": amProjecttemplatesIda, 
		"usersIdb": usersIdb, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Date Modified": dateModified, 
		"Deleted": deleted, 
		"Am Projecttemplates Ida": amProjecttemplatesIda, 
		"Users Idb": usersIdb, 
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
		"Users Idb": usersIdb, 
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
class AmProjecttemplatesUsers1CWoKey { 
  AmProjecttemplatesUsers1CWoKey({ 
	//		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesIda, 
		this.usersIdb, 
  }); 
 
	//		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesIda; 
		String? usersIdb; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesIda": amProjecttemplatesIda, 
		"usersIdb": usersIdb, 
      }; 
 
} 
*/ 
 
