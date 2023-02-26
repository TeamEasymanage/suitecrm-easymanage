// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_model.dart'; 
 
class AmProjecttemplatesAuditService { 
  //ViewAll api call 
  static Future AmProjecttemplatesAuditViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AmProjecttemplatesAuditViewAll Get call Success ..."); 
        List<AmProjecttemplatesAudit> getList = amProjecttemplatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AmProjecttemplatesAuditViewAll Get call No Data ..."); 
        List<AmProjecttemplatesAudit> getList = []; 
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
 
    String queryName = "AmprojecttemplatesauditTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AmprojecttemplatesauditTblRecSelectWhere"; 
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
			parentId  	  
			dateCreated  	  
			createdBy  	  
			fieldName  	  
			dataType  	  
			beforeValueString  	  
			afterValueString  	  
			beforeValueText  	  
			afterValueText  	  
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
        print("API AmProjecttemplatesAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AmProjecttemplatesAudit> getList =       
      List<AmProjecttemplatesAudit>.from(result.data![queryName].map((x) => 
            AmProjecttemplatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
    r'''{"query":"{\t\n\t''' +queryName+' '+queryParam+ r''' { \n\t  id , \n\t  parentId , \n\t  dateCreated , \n\t  createdBy , \n\t  fieldName , \n\t  dataType , \n\t  beforeValueString , \n\t  afterValueString , \n\t  beforeValueText , \n\t  afterValueText , \n\t  \n\t} \n}"}'''; 
 
      Uri uri = getEmUri(apiUrlGrql, apiGrqlPathPrefix);  
 
       final response = await http.post(uri,  
          body: query, headers: apiHeaders);  
 
        String procBody = response.body; 
 
        //print(procBody.toString()); 
 
        if (procBody.startsWith('{"errors":')) { 
          print("API AmProjecttemplatesAuditViewAll No G-Pkg Call - Got Errors"); 
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
        print("API AmProjecttemplatesAuditViewAll No G-Pkg call Success ...");  
        List<AmProjecttemplatesAudit> getList =       
        List<AmProjecttemplatesAudit>.from(json.decode(procBody)['data'][queryName].map((x) => 
            AmProjecttemplatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AmProjecttemplatesAuditViewAll Get call No Data ...");  
        List<AmProjecttemplatesAudit> getList = [];  
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
 
  static Future AmProjecttemplatesAuditSelectWhere( 
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
          getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AmProjecttemplatesAuditSelectWhere Get call Success ..."); 
        List<AmProjecttemplatesAudit> getList = amProjecttemplatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AmProjecttemplatesAuditSelectWhere Get call No Data ..."); 
        List<AmProjecttemplatesAudit> getList = []; 
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
 
    String queryName = "AmprojecttemplatesauditTblRecSelectWhere"; 
    String queryParam = "(searchBy: \""+searchFilter.toString()+"\", sortBy: \""+sortBy.toString()+"\", page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")";  
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			parentId  	  
			dateCreated  	  
			createdBy  	  
			fieldName  	  
			dataType  	  
			beforeValueString  	  
			afterValueString  	  
			beforeValueText  	  
			afterValueText  	  
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
        print("API AmProjecttemplatesAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AmProjecttemplatesAudit> getList =       
      List<AmProjecttemplatesAudit>.from(result.data![queryName].map((x) => 
            AmProjecttemplatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AmProjecttemplatesAuditFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AmProjecttemplatesAuditFindByColumnName Get call Success ..."); 
        List<AmProjecttemplatesAudit> getList = amProjecttemplatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AmProjecttemplatesAuditFindByColumnName Get call No Data ..."); 
        List<AmProjecttemplatesAudit> getList = []; 
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
  static Future AmProjecttemplatesAuditViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<AmProjecttemplatesAudit> getList = amProjecttemplatesAuditFromJson(response.body); 
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
 
    String queryName = "AmprojecttemplatesauditTblRecViewAll"; 
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
        print("API AmProjecttemplatesAuditViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<AmProjecttemplatesAudit> getList =       
      List<AmProjecttemplatesAudit>.from(result.data![queryName].map((x) => 
            AmProjecttemplatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
 
  //Get a single AmProjecttemplatesAudit by QUERY method 
  static Future AmProjecttemplatesAuditQuery(String id) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<AmProjecttemplatesAudit> foundAmProjecttemplatesAudit = amProjecttemplatesAuditFromJson(response.body); 
        AmProjecttemplatesAudit newAmProjecttemplatesAudit = foundAmProjecttemplatesAudit.elementAt(0); 
        return newAmProjecttemplatesAudit; 
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
 
    String queryName = "AmprojecttemplatesauditTblRecQuery"; 
    String queryParam = "(id: "+jsonEncode(id)+" )"; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			parentId  	  
			dateCreated  	  
			createdBy  	  
			fieldName  	  
			dataType  	  
			beforeValueString  	  
			afterValueString  	  
			beforeValueText  	  
			afterValueText  	  
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
        print("API AmProjecttemplatesAuditQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditQuery G-Pkg Get call Success ...");  
      } 
 
      List<AmProjecttemplatesAudit> getList =       
      List<AmProjecttemplatesAudit>.from(result.data![queryName].map((x) => 
            AmProjecttemplatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
        AmProjecttemplatesAudit newAmProjecttemplatesAudit = getList.elementAt(0); 
        return newAmProjecttemplatesAudit; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AmProjecttemplatesAuditCreate(Map newAmProjecttemplatesAudit) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAmProjecttemplatesAudit), headers: apiHeaders); 
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
 
    String queryName = "AmprojecttemplatesauditTblRecCreate"; 
    String queryParam = jsonEncode(newAmProjecttemplatesAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AmprojecttemplatesauditTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			parentId  	  
			dateCreated  	  
			createdBy  	  
			fieldName  	  
			dataType  	  
			beforeValueString  	  
			afterValueString  	  
			beforeValueText  	  
			afterValueText  	  
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
        print("API AmProjecttemplatesAuditCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditCreate G-Pkg call Success ...");  
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
  static Future AmProjecttemplatesAuditEdit( 	
	      String id, AmProjecttemplatesAudit amProjecttemplatesAudit) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/am_projecttemplates_audit/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(amProjecttemplatesAudit), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AmProjecttemplatesAudit> foundAmProjecttemplatesAudit = 	
	            amProjecttemplatesAuditFromJson(response.body); 	
	        AmProjecttemplatesAudit newAmProjecttemplatesAudit = 	
	            foundAmProjecttemplatesAudit.elementAt(0); 	
	        return newAmProjecttemplatesAudit; 	
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
 
    String queryName = "AmprojecttemplatesauditTblRecUpdate"; 
    String queryParam = jsonEncode(amProjecttemplatesAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' , AmprojecttemplatesauditTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			parentId  	  
			dateCreated  	  
			createdBy  	  
			fieldName  	  
			dataType  	  
			beforeValueString  	  
			afterValueString  	  
			beforeValueText  	  
			afterValueText  	  
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
        print("API AmProjecttemplatesAuditEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditEdit G-Pkg call Success ...");  
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
	  static Future AmProjecttemplatesAuditDelete(String id) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/am_projecttemplates_audit/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AmprojecttemplatesauditTblRecDelete"; 
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
        print("API AmProjecttemplatesAuditDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AmProjecttemplatesAuditDelete G-Pkg call Success ...");  
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
 
