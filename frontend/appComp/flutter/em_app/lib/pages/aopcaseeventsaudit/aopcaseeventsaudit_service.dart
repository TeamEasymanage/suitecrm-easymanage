// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_model.dart'; 
 
class AopCaseEventsAuditService { 
  //ViewAll api call 
  static Future AopCaseEventsAuditViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AopCaseEventsAuditViewAll Get call Success ..."); 
        List<AopCaseEventsAudit> getList = aopCaseEventsAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseEventsAuditViewAll Get call No Data ..."); 
        List<AopCaseEventsAudit> getList = []; 
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
 
    String queryName = "AopcaseeventsauditTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AopcaseeventsauditTblRecSelectWhere"; 
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
        print("API AopCaseEventsAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseEventsAudit> getList =       
      List<AopCaseEventsAudit>.from(result.data![queryName].map((x) => 
            AopCaseEventsAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
          print("API AopCaseEventsAuditViewAll No G-Pkg Call - Got Errors"); 
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
        print("API AopCaseEventsAuditViewAll No G-Pkg call Success ...");  
        List<AopCaseEventsAudit> getList =       
        List<AopCaseEventsAudit>.from(json.decode(procBody)['data'][queryName].map((x) => 
            AopCaseEventsAudit.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AopCaseEventsAuditViewAll Get call No Data ...");  
        List<AopCaseEventsAudit> getList = [];  
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
 
  static Future AopCaseEventsAuditSelectWhere( 
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
          getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AopCaseEventsAuditSelectWhere Get call Success ..."); 
        List<AopCaseEventsAudit> getList = aopCaseEventsAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseEventsAuditSelectWhere Get call No Data ..."); 
        List<AopCaseEventsAudit> getList = []; 
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
 
    String queryName = "AopcaseeventsauditTblRecSelectWhere"; 
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
        print("API AopCaseEventsAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseEventsAudit> getList =       
      List<AopCaseEventsAudit>.from(result.data![queryName].map((x) => 
            AopCaseEventsAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AopCaseEventsAuditFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AopCaseEventsAuditFindByColumnName Get call Success ..."); 
        List<AopCaseEventsAudit> getList = aopCaseEventsAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseEventsAuditFindByColumnName Get call No Data ..."); 
        List<AopCaseEventsAudit> getList = []; 
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
  static Future AopCaseEventsAuditViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<AopCaseEventsAudit> getList = aopCaseEventsAuditFromJson(response.body); 
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
 
    String queryName = "AopcaseeventsauditTblRecViewAll"; 
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
        print("API AopCaseEventsAuditViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseEventsAudit> getList =       
      List<AopCaseEventsAudit>.from(result.data![queryName].map((x) => 
            AopCaseEventsAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
 
  //Get a single AopCaseEventsAudit by QUERY method 
  static Future AopCaseEventsAuditQuery(String id) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<AopCaseEventsAudit> foundAopCaseEventsAudit = aopCaseEventsAuditFromJson(response.body); 
        AopCaseEventsAudit newAopCaseEventsAudit = foundAopCaseEventsAudit.elementAt(0); 
        return newAopCaseEventsAudit; 
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
 
    String queryName = "AopcaseeventsauditTblRecQuery"; 
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
        print("API AopCaseEventsAuditQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditQuery G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseEventsAudit> getList =       
      List<AopCaseEventsAudit>.from(result.data![queryName].map((x) => 
            AopCaseEventsAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
        AopCaseEventsAudit newAopCaseEventsAudit = getList.elementAt(0); 
        return newAopCaseEventsAudit; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AopCaseEventsAuditCreate(Map newAopCaseEventsAudit) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAopCaseEventsAudit), headers: apiHeaders); 
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
 
    String queryName = "AopcaseeventsauditTblRecCreate"; 
    String queryParam = jsonEncode(newAopCaseEventsAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AopcaseeventsauditTblRec1 : '+  
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
        print("API AopCaseEventsAuditCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditCreate G-Pkg call Success ...");  
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
  static Future AopCaseEventsAuditEdit( 	
	      String id, AopCaseEventsAudit aopCaseEventsAudit) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/aop_case_events_audit/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(aopCaseEventsAudit), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AopCaseEventsAudit> foundAopCaseEventsAudit = 	
	            aopCaseEventsAuditFromJson(response.body); 	
	        AopCaseEventsAudit newAopCaseEventsAudit = 	
	            foundAopCaseEventsAudit.elementAt(0); 	
	        return newAopCaseEventsAudit; 	
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
 
    String queryName = "AopcaseeventsauditTblRecUpdate"; 
    String queryParam = jsonEncode(aopCaseEventsAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' , AopcaseeventsauditTblRec1 : '+  
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
        print("API AopCaseEventsAuditEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditEdit G-Pkg call Success ...");  
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
	  static Future AopCaseEventsAuditDelete(String id) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/aop_case_events_audit/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AopcaseeventsauditTblRecDelete"; 
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
        print("API AopCaseEventsAuditDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseEventsAuditDelete G-Pkg call Success ...");  
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
 
