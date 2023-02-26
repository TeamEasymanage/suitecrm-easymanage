// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_model.dart'; 
 
class AopCaseUpdatesAuditService { 
  //ViewAll api call 
  static Future AopCaseUpdatesAuditViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AopCaseUpdatesAuditViewAll Get call Success ..."); 
        List<AopCaseUpdatesAudit> getList = aopCaseUpdatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseUpdatesAuditViewAll Get call No Data ..."); 
        List<AopCaseUpdatesAudit> getList = []; 
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
 
    String queryName = "AopcaseupdatesauditTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AopcaseupdatesauditTblRecSelectWhere"; 
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
        print("API AopCaseUpdatesAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseUpdatesAudit> getList =       
      List<AopCaseUpdatesAudit>.from(result.data![queryName].map((x) => 
            AopCaseUpdatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
          print("API AopCaseUpdatesAuditViewAll No G-Pkg Call - Got Errors"); 
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
        print("API AopCaseUpdatesAuditViewAll No G-Pkg call Success ...");  
        List<AopCaseUpdatesAudit> getList =       
        List<AopCaseUpdatesAudit>.from(json.decode(procBody)['data'][queryName].map((x) => 
            AopCaseUpdatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AopCaseUpdatesAuditViewAll Get call No Data ...");  
        List<AopCaseUpdatesAudit> getList = [];  
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
 
  static Future AopCaseUpdatesAuditSelectWhere( 
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
          getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AopCaseUpdatesAuditSelectWhere Get call Success ..."); 
        List<AopCaseUpdatesAudit> getList = aopCaseUpdatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseUpdatesAuditSelectWhere Get call No Data ..."); 
        List<AopCaseUpdatesAudit> getList = []; 
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
 
    String queryName = "AopcaseupdatesauditTblRecSelectWhere"; 
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
        print("API AopCaseUpdatesAuditViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseUpdatesAudit> getList =       
      List<AopCaseUpdatesAudit>.from(result.data![queryName].map((x) => 
            AopCaseUpdatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AopCaseUpdatesAuditFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AopCaseUpdatesAuditFindByColumnName Get call Success ..."); 
        List<AopCaseUpdatesAudit> getList = aopCaseUpdatesAuditFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AopCaseUpdatesAuditFindByColumnName Get call No Data ..."); 
        List<AopCaseUpdatesAudit> getList = []; 
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
  static Future AopCaseUpdatesAuditViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<AopCaseUpdatesAudit> getList = aopCaseUpdatesAuditFromJson(response.body); 
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
 
    String queryName = "AopcaseupdatesauditTblRecViewAll"; 
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
        print("API AopCaseUpdatesAuditViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseUpdatesAudit> getList =       
      List<AopCaseUpdatesAudit>.from(result.data![queryName].map((x) => 
            AopCaseUpdatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
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
 
  //Get a single AopCaseUpdatesAudit by QUERY method 
  static Future AopCaseUpdatesAuditQuery(String id) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<AopCaseUpdatesAudit> foundAopCaseUpdatesAudit = aopCaseUpdatesAuditFromJson(response.body); 
        AopCaseUpdatesAudit newAopCaseUpdatesAudit = foundAopCaseUpdatesAudit.elementAt(0); 
        return newAopCaseUpdatesAudit; 
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
 
    String queryName = "AopcaseupdatesauditTblRecQuery"; 
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
        print("API AopCaseUpdatesAuditQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditQuery G-Pkg Get call Success ...");  
      } 
 
      List<AopCaseUpdatesAudit> getList =       
      List<AopCaseUpdatesAudit>.from(result.data![queryName].map((x) => 
            AopCaseUpdatesAudit.fromJson(json.decode(json.encode(x).toString())))); 
 
        AopCaseUpdatesAudit newAopCaseUpdatesAudit = getList.elementAt(0); 
        return newAopCaseUpdatesAudit; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AopCaseUpdatesAuditCreate(Map newAopCaseUpdatesAudit) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAopCaseUpdatesAudit), headers: apiHeaders); 
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
 
    String queryName = "AopcaseupdatesauditTblRecCreate"; 
    String queryParam = jsonEncode(newAopCaseUpdatesAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AopcaseupdatesauditTblRec1 : '+  
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
        print("API AopCaseUpdatesAuditCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditCreate G-Pkg call Success ...");  
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
  static Future AopCaseUpdatesAuditEdit( 	
	      String id, AopCaseUpdatesAudit aopCaseUpdatesAudit) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/aop_case_updates_audit/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(aopCaseUpdatesAudit), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AopCaseUpdatesAudit> foundAopCaseUpdatesAudit = 	
	            aopCaseUpdatesAuditFromJson(response.body); 	
	        AopCaseUpdatesAudit newAopCaseUpdatesAudit = 	
	            foundAopCaseUpdatesAudit.elementAt(0); 	
	        return newAopCaseUpdatesAudit; 	
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
 
    String queryName = "AopcaseupdatesauditTblRecUpdate"; 
    String queryParam = jsonEncode(aopCaseUpdatesAudit); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' , AopcaseupdatesauditTblRec1 : '+  
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
        print("API AopCaseUpdatesAuditEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditEdit G-Pkg call Success ...");  
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
	  static Future AopCaseUpdatesAuditDelete(String id) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/aop_case_updates_audit/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AopcaseupdatesauditTblRecDelete"; 
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
        print("API AopCaseUpdatesAuditDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AopCaseUpdatesAuditDelete G-Pkg call Success ...");  
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
 
