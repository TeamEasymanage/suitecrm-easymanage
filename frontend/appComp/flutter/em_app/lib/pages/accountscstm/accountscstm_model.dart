import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<AccountsCstm> accountsCstmFromJson(String str) => 
    List<AccountsCstm>.from(json.decode(str).map((x) => AccountsCstm.fromJson(x))); 
 
String accountsCstmToJson(List<AccountsCstm> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class AccountsCstm { 
  AccountsCstm({ 
		required this.idC, 
		this.jjwgMapsLngC, 
		this.jjwgMapsLatC, 
		this.jjwgMapsGeocodeStatusC, 
		this.jjwgMapsAddressC, 
  }); 
 
		String idC; 
		double? jjwgMapsLngC; 
		double? jjwgMapsLatC; 
		String? jjwgMapsGeocodeStatusC; 
		String? jjwgMapsAddressC; 
 
  factory AccountsCstm.fromJson(Map<String, dynamic> json) => AccountsCstm( 
		idC: json["idC"], 
		jjwgMapsLngC: json["jjwgMapsLngC"], 
		jjwgMapsLatC: json["jjwgMapsLatC"], 
		jjwgMapsGeocodeStatusC: json["jjwgMapsGeocodeStatusC"], 
		jjwgMapsAddressC: json["jjwgMapsAddressC"], 
      ); 
 
  Map<String, dynamic> toJson() => { 
		"idC": idC, 
		"jjwgMapsLngC": jjwgMapsLngC, 
		"jjwgMapsLatC": jjwgMapsLatC, 
		"jjwgMapsGeocodeStatusC": jjwgMapsGeocodeStatusC, 
		"jjwgMapsAddressC": jjwgMapsAddressC, 
      }; 
 
  Map<String, dynamic> toMapLabelVal() => { 
		"Id C": idC, 
		"Jjwg Maps Lng C": jjwgMapsLngC, 
		"Jjwg Maps Lat C": jjwgMapsLatC, 
		"Jjwg Maps Geocode Status C": jjwgMapsGeocodeStatusC, 
		"Jjwg Maps Address C": jjwgMapsAddressC, 
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
		"Id C": idC, 
		"Jjwg Maps Lng C": jjwgMapsLngC, 
		"Jjwg Maps Lat C": jjwgMapsLatC, 
		"Jjwg Maps Geocode Status C": jjwgMapsGeocodeStatusC, 
		"Jjwg Maps Address C": jjwgMapsAddressC, 
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
 
        //case "Jjwg Maps Lng C": { ret = getEmFmtCurOpt(val); } break;	 
        //case "Jjwg Maps Lat C": { ret = getEmFmtCurOpt(val); } break;	 
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
class AccountsCstmWoKey { 
  AccountsCstmWoKey({ 
	//		required this.idC, 
		this.jjwgMapsLngC, 
		this.jjwgMapsLatC, 
		this.jjwgMapsGeocodeStatusC, 
		this.jjwgMapsAddressC, 
  }); 
 
	//		String idC; 
		double? jjwgMapsLngC; 
		double? jjwgMapsLatC; 
		String? jjwgMapsGeocodeStatusC; 
		String? jjwgMapsAddressC; 
 
  Map<String, dynamic> toJson() => { 
	//		"idC": idC, 
		"jjwgMapsLngC": jjwgMapsLngC, 
		"jjwgMapsLatC": jjwgMapsLatC, 
		"jjwgMapsGeocodeStatusC": jjwgMapsGeocodeStatusC, 
		"jjwgMapsAddressC": jjwgMapsAddressC, 
      }; 
 
} 
*/ 
 
