// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/accounts/accounts_model.dart'; 
 
class AccountsService { 
  //ViewAll api call 
  static Future AccountsViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AccountsViewAll Get call Success ..."); 
        List<Accounts> getList = accountsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsViewAll Get call No Data ..."); 
        List<Accounts> getList = []; 
        return getList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AccountsTblRecSelectWhere"; 
      queryParam = "(searchBy: \"  id = 10 \" , page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
	 */ 
 
    if (isGrqlUseNoPkgForViewAllQry == false) { 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			name  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			description  	  
			deleted  	  
			assignedUserId  	  
			accountType  	  
			industry  	  
			annualRevenue  	  
			phoneFax  	  
			billingAddressStreet  	  
			billingAddressCity  	  
			billingAddressState  	  
			billingAddressPostalcode  	  
			billingAddressCountry  	  
			rating  	  
			phoneOffice  	  
			phoneAlternate  	  
			website  	  
			ownership  	  
			employees  	  
			tickerSymbol  	  
			shippingAddressStreet  	  
			shippingAddressCity  	  
			shippingAddressState  	  
			shippingAddressPostalcode  	  
			shippingAddressCountry  	  
			parentId  	  
			sicCode  	  
			campaignId  	  
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final QueryOptions options = QueryOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.query(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsViewAll G-Pkg Get call Success ...");  
      } 
 
      List<Accounts> getList =       
      List<Accounts>.from(result.data![queryName].map((x) => 
            Accounts.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
 
    } else { 
 
      // ---------- Grql without package graphql 
    try {  
 
    String query = 
    r'''{"query":"{\t\n\t''' +queryName+' '+queryParam+ r''' { \n\t  id , \n\t  name , \n\t  dateEntered , \n\t  dateModified , \n\t  modifiedUserId , \n\t  createdBy , \n\t  description , \n\t  deleted , \n\t  assignedUserId , \n\t  accountType , \n\t  industry , \n\t  annualRevenue , \n\t  phoneFax , \n\t  billingAddressStreet , \n\t  billingAddressCity , \n\t  billingAddressState , \n\t  billingAddressPostalcode , \n\t  billingAddressCountry , \n\t  rating , \n\t  phoneOffice , \n\t  phoneAlternate , \n\t  website , \n\t  ownership , \n\t  employees , \n\t  tickerSymbol , \n\t  shippingAddressStreet , \n\t  shippingAddressCity , \n\t  shippingAddressState , \n\t  shippingAddressPostalcode , \n\t  shippingAddressCountry , \n\t  parentId , \n\t  sicCode , \n\t  campaignId , \n\t  \n\t} \n}"}'''; 
 
      Uri uri = getEmUri(apiUrlGrql, apiGrqlPathPrefix);  
 
       final response = await http.post(uri,  
          body: query, headers: apiHeaders);  
 
        String procBody = response.body; 
 
        //print(procBody.toString()); 
 
        if (procBody.startsWith('{"errors":')) { 
          print("API AccountsViewAll No G-Pkg Call - Got Errors"); 
          return "Error: " + procBody; 
        } 
 
        /* 
        String toRemove = '{"data":{"'+queryName+'":'; 
        //dynamic procBody = json['data'][queryName]; 
        if (procBody != null && procBody.length > toRemove.length) { 
          procBody = procBody.replaceFirst(toRemove,""); 
          procBody = procBody.substring(0, procBody.length - 2); 
        } 
 
        final dataMap = json.decode(procBody); 
        final objMap = dataMap['data'][queryName]; 
        print("--------------------------------------------------------------"); 
        print(dataMap); 
        print("--------------------------------------------------------------"); 
        print(objMap); 
 
        //print("--------------------------------------------------------------"); 
        //print(procBody.toString()); 
        //print(jsonDecode(response.body)['data'][queryName]); 
 
        */ 
 
      if (response.statusCode == 200) {  
        if (response.body.startsWith('{"data":')) { 
        print("API AccountsViewAll No G-Pkg call Success ...");  
        List<Accounts> getList =       
        List<Accounts>.from(json.decode(procBody)['data'][queryName].map((x) => 
            Accounts.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AccountsViewAll Get call No Data ...");  
        List<Accounts> getList = [];  
        return getList;  
        } 
      } else {  
        return "Error: " +  
            response.statusCode.toString() + " ( " +  
            response.reasonPhrase.toString() +  
            " ) occured!";  
      }  
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
    } //no use pkg 
 
    } //rest or gql 
 
  } 
 
  static Future AccountsSelectWhere( 
	  int pageNo 
    , String searchFilter  
    , String sortBy  
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'searchBy': searchFilter,  
        'sortBy': sortBy, 
        'page': pageNo.toString(), 
        'size': apiPageSize.toString() 
        };  
 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/accounts/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AccountsSelectWhere Get call Success ..."); 
        List<Accounts> getList = accountsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsSelectWhere Get call No Data ..."); 
        List<Accounts> getList = []; 
        return getList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecSelectWhere"; 
    String queryParam = "(searchBy: \""+searchFilter.toString()+"\", sortBy: \""+sortBy.toString()+"\", page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")";  
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			name  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			description  	  
			deleted  	  
			assignedUserId  	  
			accountType  	  
			industry  	  
			annualRevenue  	  
			phoneFax  	  
			billingAddressStreet  	  
			billingAddressCity  	  
			billingAddressState  	  
			billingAddressPostalcode  	  
			billingAddressCountry  	  
			rating  	  
			phoneOffice  	  
			phoneAlternate  	  
			website  	  
			ownership  	  
			employees  	  
			tickerSymbol  	  
			shippingAddressStreet  	  
			shippingAddressCity  	  
			shippingAddressState  	  
			shippingAddressPostalcode  	  
			shippingAddressCountry  	  
			parentId  	  
			sicCode  	  
			campaignId  	  
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final QueryOptions options = QueryOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.query(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsViewAll G-Pkg Get call Success ...");  
      } 
 
      List<Accounts> getList =       
      List<Accounts>.from(result.data![queryName].map((x) => 
            Accounts.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AccountsFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AccountsFindByColumnName Get call Success ..."); 
        List<Accounts> getList = accountsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsFindByColumnName Get call No Data ..."); 
        List<Accounts> getList = []; 
        return getList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
  } 
*/ 
 
  //Returns a list of ids from the api using GET method. 
  static Future AccountsViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<Accounts> getList = accountsFromJson(response.body); 
        List<String> idList = 
            getList.map((e) => e.id.toString()).toList(); 
        return idList; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecViewAll"; 
    String queryParam = ""; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
      id   
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final QueryOptions options = QueryOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.query(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<Accounts> getList =       
      List<Accounts>.from(result.data![queryName].map((x) => 
            Accounts.fromJson(json.decode(json.encode(x).toString())))); 
 
        List<String> idList = 
            getList.map((e) => e.id.toString()).toList(); 
        return idList; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  //Get a single Accounts by QUERY method 
  static Future AccountsQuery(String id) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/accounts/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<Accounts> foundAccounts = accountsFromJson(response.body); 
        Accounts newAccounts = foundAccounts.elementAt(0); 
        return newAccounts; 
      } else { 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecQuery"; 
    String queryParam = "(id: "+jsonEncode(id)+" )"; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			name  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			description  	  
			deleted  	  
			assignedUserId  	  
			accountType  	  
			industry  	  
			annualRevenue  	  
			phoneFax  	  
			billingAddressStreet  	  
			billingAddressCity  	  
			billingAddressState  	  
			billingAddressPostalcode  	  
			billingAddressCountry  	  
			rating  	  
			phoneOffice  	  
			phoneAlternate  	  
			website  	  
			ownership  	  
			employees  	  
			tickerSymbol  	  
			shippingAddressStreet  	  
			shippingAddressCity  	  
			shippingAddressState  	  
			shippingAddressPostalcode  	  
			shippingAddressCountry  	  
			parentId  	  
			sicCode  	  
			campaignId  	  
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final QueryOptions options = QueryOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.query(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsQuery G-Pkg Get call Success ...");  
      } 
 
      List<Accounts> getList =       
      List<Accounts>.from(result.data![queryName].map((x) => 
            Accounts.fromJson(json.decode(json.encode(x).toString())))); 
 
        Accounts newAccounts = getList.elementAt(0); 
        return newAccounts; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AccountsCreate(Map newAccounts) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/accounts/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAccounts), headers: apiHeaders); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        print("Inside Create try  Block"); 
        return "Record Added Successfully"; 
      } else { 
        print("Error while posting data $status "); 
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
      } 
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecCreate"; 
    String queryParam = jsonEncode(newAccounts); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AccountsTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			name  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			description  	  
			deleted  	  
			assignedUserId  	  
			accountType  	  
			industry  	  
			annualRevenue  	  
			phoneFax  	  
			billingAddressStreet  	  
			billingAddressCity  	  
			billingAddressState  	  
			billingAddressPostalcode  	  
			billingAddressCountry  	  
			rating  	  
			phoneOffice  	  
			phoneAlternate  	  
			website  	  
			ownership  	  
			employees  	  
			tickerSymbol  	  
			shippingAddressStreet  	  
			shippingAddressCity  	  
			shippingAddressState  	  
			shippingAddressPostalcode  	  
			shippingAddressCountry  	  
			parentId  	  
			sicCode  	  
			campaignId  	  
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final MutationOptions options = MutationOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.mutate(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCreate G-Pkg call Success ...");  
        return "Record Added Successfully"; 
      } 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
  //Call Edit Record API 	
  static Future AccountsEdit( 	
	      String id, Accounts accounts) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/accounts/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(accounts), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<Accounts> foundAccounts = 	
	            accountsFromJson(response.body); 	
	        Accounts newAccounts = 	
	            foundAccounts.elementAt(0); 	
	        return newAccounts; 	
	        */ 	
	        return "Record Updated Successfully"; 	
	      } else { 	
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
	      } 	
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecUpdate"; 
    String queryParam = jsonEncode(accounts); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' , AccountsTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			name  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			description  	  
			deleted  	  
			assignedUserId  	  
			accountType  	  
			industry  	  
			annualRevenue  	  
			phoneFax  	  
			billingAddressStreet  	  
			billingAddressCity  	  
			billingAddressState  	  
			billingAddressPostalcode  	  
			billingAddressCountry  	  
			rating  	  
			phoneOffice  	  
			phoneAlternate  	  
			website  	  
			ownership  	  
			employees  	  
			tickerSymbol  	  
			shippingAddressStreet  	  
			shippingAddressCity  	  
			shippingAddressState  	  
			shippingAddressPostalcode  	  
			shippingAddressCountry  	  
			parentId  	  
			sicCode  	  
			campaignId  	  
      } 
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final MutationOptions options = MutationOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.mutate(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsEdit G-Pkg call Success ...");  
	        return "Record Updated Successfully"; 	
      } 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
	 } 	
	 	
	  //Call Delete Record API 	
	  static Future AccountsDelete(String id) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/accounts/Delete", parameters), headers: apiHeaders); 	
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        //int delCount = response.body.delCount; 	
	        return "Record Deleted Successfully"; 	
	      } else { 	
        return "Error: " + 
            response.statusCode.toString() + " ( " + 
            response.reasonPhrase.toString() + 
            " ) occured!"; 
	      } 	
    } catch (err) { 
      print(err);  
      return connErrStr + " ( " + err.toString() + " ) "; 
    } 
	   	 
      } else { 
 
  // ---------------- Grql ----------------- 
 
    String queryName = "AccountsTblRecDelete"; 
    String queryParam = ""; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' '  
			+ r''' )   
      } 
      '''; 
 
      //print(query); 
 
      GraphQLClient client = EmGraphQLClientNew().getClient(apiHeaders); 
 
      final MutationOptions options = MutationOptions( 
        document: gql(query), 
      ); 
 
      //print("Step-1"); 
 
      final QueryResult result = await client.mutate(options); 
 
      //print(result); 
      //print("------------------------------------------------------------"); 
 
      if (result.hasException) { 
        print("API AccountsDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsDelete G-Pkg call Success ...");  
	        return "Record Deleted Successfully"; 	
      } 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
	 } 	
} 
 
