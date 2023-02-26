import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AmTasktemplatesAmProjecttemplatesC> amTasktemplatesAmProjecttemplatesCFromJson(String str) => 
    List<AmTasktemplatesAmProjecttemplatesC>.from(json.decode(str).map((x) => AmTasktemplatesAmProjecttemplatesC.fromJson(x))); 
 
String amTasktemplatesAmProjecttemplatesCToJson(List<AmTasktemplatesAmProjecttemplatesC> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AmTasktemplatesAmProjecttemplatesC { 
  AmTasktemplatesAmProjecttemplatesC({ 
		required this.id, 
		this.dateModified, 
		this.deleted, 
  }); 
 
		String id; 
		String? dateModified; 
		String? deleted; 
 
  factory AmTasktemplatesAmProjecttemplatesC.fromJson(Map<String, dynamic> json) => AmTasktemplatesAmProjecttemplatesC( 
		id: json["id"], 
		dateModified: json["dateModified"], 
		deleted: json["deleted"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id": id, 
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
class AmTasktemplatesAmProjecttemplatesCWoKey { 
  AmTasktemplatesAmProjecttemplatesCWoKey({ 
	//		required this.id, 
		this.dateModified, 
		this.deleted, 
  }); 
 
	//		String id; 
		String? dateModified; 
		String? deleted; 
 
  Map<String, dynamic> toJson() => { 
	//		"id": id, 
		"dateModified": dateModified, 
		"deleted": deleted, 
      }; 
 
} 
*/ 
 
