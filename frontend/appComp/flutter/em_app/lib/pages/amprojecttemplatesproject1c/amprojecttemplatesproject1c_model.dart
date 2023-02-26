import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AmProjecttemplatesProject1C> amProjecttemplatesProject1CFromJson(String str) => 
    List<AmProjecttemplatesProject1C>.from(json.decode(str).map((x) => AmProjecttemplatesProject1C.fromJson(x))); 
 
String amProjecttemplatesProject1CToJson(List<AmProjecttemplatesProject1C> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AmProjecttemplatesProject1C { 
  AmProjecttemplatesProject1C({ 
		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesProject1projectIdb, 
  }); 
 
		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesProject1projectIdb; 
 
  factory AmProjecttemplatesProject1C.fromJson(Map<String, dynamic> json) => AmProjecttemplatesProject1C( 
		id: json["id"], 
		dateModified: json["dateModified"], 
		deleted: json["deleted"], 
		amProjecttemplatesProject1projectIdb: json["amProjecttemplatesProject1projectIdb"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesProject1projectIdb": amProjecttemplatesProject1projectIdb, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
		"Date Modified": dateModified, 
		"Deleted": deleted, 
		"Am Projecttemplates Project 1project Idb": amProjecttemplatesProject1projectIdb, 
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
		"Am Projecttemplates Project 1project Idb": amProjecttemplatesProject1projectIdb, 
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
class AmProjecttemplatesProject1CWoKey { 
  AmProjecttemplatesProject1CWoKey({ 
	//		required this.id, 
		this.dateModified, 
		this.deleted, 
		this.amProjecttemplatesProject1projectIdb, 
  }); 
 
	//		String id; 
		String? dateModified; 
		String? deleted; 
		String? amProjecttemplatesProject1projectIdb; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
		"amProjecttemplatesProject1projectIdb": amProjecttemplatesProject1projectIdb, 
      }; 
 
} 
*/ 
 
