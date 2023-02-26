import 'dart:convert'; 
 
import 'package:em_app/em_global.dart';  
 
List<Accounts> accountsFromJson(String str) => 
    List<Accounts>.from(json.decode(str).map((x) => Accounts.fromJson(x))); 
 
String accountsToJson(List<Accounts> data) => 
    json.encode(List<dynamic>.from(data.map((x) => x.toJson()))); 
 
class Accounts { 
  Accounts({ 
		required this.id, 
		this.name, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.description, 
		this.deleted, 
		this.assignedUserId, 
		this.accountType, 
		this.industry, 
		this.annualRevenue, 
		this.phoneFax, 
		this.billingAddressStreet, 
		this.billingAddressCity, 
		this.billingAddressState, 
		this.billingAddressPostalcode, 
		this.billingAddressCountry, 
		this.rating, 
		this.phoneOffice, 
		this.phoneAlternate, 
		this.website, 
		this.ownership, 
		this.employees, 
		this.tickerSymbol, 
		this.shippingAddressStreet, 
		this.shippingAddressCity, 
		this.shippingAddressState, 
		this.shippingAddressPostalcode, 
		this.shippingAddressCountry, 
		this.parentId, 
		this.sicCode, 
		this.campaignId, 
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
		String? accountType; 
		String? industry; 
		String? annualRevenue; 
		String? phoneFax; 
		String? billingAddressStreet; 
		String? billingAddressCity; 
		String? billingAddressState; 
		String? billingAddressPostalcode; 
		String? billingAddressCountry; 
		String? rating; 
		String? phoneOffice; 
		String? phoneAlternate; 
		String? website; 
		String? ownership; 
		String? employees; 
		String? tickerSymbol; 
		String? shippingAddressStreet; 
		String? shippingAddressCity; 
		String? shippingAddressState; 
		String? shippingAddressPostalcode; 
		String? shippingAddressCountry; 
		String? parentId; 
		String? sicCode; 
		String? campaignId; 
 
  factory Accounts.fromJson(Map<String, dynamic> json) => Accounts( 
		id: json["id"], 
		name: json["name"], 
		dateEntered: json["dateEntered"], 
		dateModified: json["dateModified"], 
		modifiedUserId: json["modifiedUserId"], 
		createdBy: json["createdBy"], 
		description: json["description"], 
		deleted: json["deleted"], 
		assignedUserId: json["assignedUserId"], 
		accountType: json["accountType"], 
		industry: json["industry"], 
		annualRevenue: json["annualRevenue"], 
		phoneFax: json["phoneFax"], 
		billingAddressStreet: json["billingAddressStreet"], 
		billingAddressCity: json["billingAddressCity"], 
		billingAddressState: json["billingAddressState"], 
		billingAddressPostalcode: json["billingAddressPostalcode"], 
		billingAddressCountry: json["billingAddressCountry"], 
		rating: json["rating"], 
		phoneOffice: json["phoneOffice"], 
		phoneAlternate: json["phoneAlternate"], 
		website: json["website"], 
		ownership: json["ownership"], 
		employees: json["employees"], 
		tickerSymbol: json["tickerSymbol"], 
		shippingAddressStreet: json["shippingAddressStreet"], 
		shippingAddressCity: json["shippingAddressCity"], 
		shippingAddressState: json["shippingAddressState"], 
		shippingAddressPostalcode: json["shippingAddressPostalcode"], 
		shippingAddressCountry: json["shippingAddressCountry"], 
		parentId: json["parentId"], 
		sicCode: json["sicCode"], 
		campaignId: json["campaignId"], 
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
		"accountType": accountType, 
		"industry": industry, 
		"annualRevenue": annualRevenue, 
		"phoneFax": phoneFax, 
		"billingAddressStreet": billingAddressStreet, 
		"billingAddressCity": billingAddressCity, 
		"billingAddressState": billingAddressState, 
		"billingAddressPostalcode": billingAddressPostalcode, 
		"billingAddressCountry": billingAddressCountry, 
		"rating": rating, 
		"phoneOffice": phoneOffice, 
		"phoneAlternate": phoneAlternate, 
		"website": website, 
		"ownership": ownership, 
		"employees": employees, 
		"tickerSymbol": tickerSymbol, 
		"shippingAddressStreet": shippingAddressStreet, 
		"shippingAddressCity": shippingAddressCity, 
		"shippingAddressState": shippingAddressState, 
		"shippingAddressPostalcode": shippingAddressPostalcode, 
		"shippingAddressCountry": shippingAddressCountry, 
		"parentId": parentId, 
		"sicCode": sicCode, 
		"campaignId": campaignId, 
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
		"Account Type": accountType, 
		"Industry": industry, 
		"Annual Revenue": annualRevenue, 
		"Phone Fax": phoneFax, 
		"Billing Address Street": billingAddressStreet, 
		"Billing Address City": billingAddressCity, 
		"Billing Address State": billingAddressState, 
		"Billing Address Postalcode": billingAddressPostalcode, 
		"Billing Address Country": billingAddressCountry, 
		"Rating": rating, 
		"Phone Office": phoneOffice, 
		"Phone Alternate": phoneAlternate, 
		"Website": website, 
		"Ownership": ownership, 
		"Employees": employees, 
		"Ticker Symbol": tickerSymbol, 
		"Shipping Address Street": shippingAddressStreet, 
		"Shipping Address City": shippingAddressCity, 
		"Shipping Address State": shippingAddressState, 
		"Shipping Address Postalcode": shippingAddressPostalcode, 
		"Shipping Address Country": shippingAddressCountry, 
		"Parent Id": parentId, 
		"Sic Code": sicCode, 
		"Campaign Id": campaignId, 
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
		"Account Type": accountType, 
		"Industry": industry, 
		"Annual Revenue": annualRevenue, 
		"Phone Fax": phoneFax, 
		"Billing Address Street": billingAddressStreet, 
		"Billing Address City": billingAddressCity, 
		"Billing Address State": billingAddressState, 
		"Billing Address Postalcode": billingAddressPostalcode, 
		"Billing Address Country": billingAddressCountry, 
		"Rating": rating, 
		"Phone Office": phoneOffice, 
		"Phone Alternate": phoneAlternate, 
		"Website": website, 
		"Ownership": ownership, 
		"Employees": employees, 
		"Ticker Symbol": tickerSymbol, 
		"Shipping Address Street": shippingAddressStreet, 
		"Shipping Address City": shippingAddressCity, 
		"Shipping Address State": shippingAddressState, 
		"Shipping Address Postalcode": shippingAddressPostalcode, 
		"Shipping Address Country": shippingAddressCountry, 
		"Parent Id": parentId, 
		"Sic Code": sicCode, 
		"Campaign Id": campaignId, 
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
class AccountsWoKey { 
  AccountsWoKey({ 
	//		required this.id, 
		this.name, 
		this.dateEntered, 
		this.dateModified, 
		this.modifiedUserId, 
		this.createdBy, 
		this.description, 
		this.deleted, 
		this.assignedUserId, 
		this.accountType, 
		this.industry, 
		this.annualRevenue, 
		this.phoneFax, 
		this.billingAddressStreet, 
		this.billingAddressCity, 
		this.billingAddressState, 
		this.billingAddressPostalcode, 
		this.billingAddressCountry, 
		this.rating, 
		this.phoneOffice, 
		this.phoneAlternate, 
		this.website, 
		this.ownership, 
		this.employees, 
		this.tickerSymbol, 
		this.shippingAddressStreet, 
		this.shippingAddressCity, 
		this.shippingAddressState, 
		this.shippingAddressPostalcode, 
		this.shippingAddressCountry, 
		this.parentId, 
		this.sicCode, 
		this.campaignId, 
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
		String? accountType; 
		String? industry; 
		String? annualRevenue; 
		String? phoneFax; 
		String? billingAddressStreet; 
		String? billingAddressCity; 
		String? billingAddressState; 
		String? billingAddressPostalcode; 
		String? billingAddressCountry; 
		String? rating; 
		String? phoneOffice; 
		String? phoneAlternate; 
		String? website; 
		String? ownership; 
		String? employees; 
		String? tickerSymbol; 
		String? shippingAddressStreet; 
		String? shippingAddressCity; 
		String? shippingAddressState; 
		String? shippingAddressPostalcode; 
		String? shippingAddressCountry; 
		String? parentId; 
		String? sicCode; 
		String? campaignId; 
 
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
		"accountType": accountType, 
		"industry": industry, 
		"annualRevenue": annualRevenue, 
		"phoneFax": phoneFax, 
		"billingAddressStreet": billingAddressStreet, 
		"billingAddressCity": billingAddressCity, 
		"billingAddressState": billingAddressState, 
		"billingAddressPostalcode": billingAddressPostalcode, 
		"billingAddressCountry": billingAddressCountry, 
		"rating": rating, 
		"phoneOffice": phoneOffice, 
		"phoneAlternate": phoneAlternate, 
		"website": website, 
		"ownership": ownership, 
		"employees": employees, 
		"tickerSymbol": tickerSymbol, 
		"shippingAddressStreet": shippingAddressStreet, 
		"shippingAddressCity": shippingAddressCity, 
		"shippingAddressState": shippingAddressState, 
		"shippingAddressPostalcode": shippingAddressPostalcode, 
		"shippingAddressCountry": shippingAddressCountry, 
		"parentId": parentId, 
		"sicCode": sicCode, 
		"campaignId": campaignId, 
      }; 
 
} 
*/ 
 
