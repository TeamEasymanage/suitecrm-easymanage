// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/aclactions/aclactions_model.dart'; 
 
class AclActionsService { 
  //ViewAll api call 
  static Future AclActionsViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/acl_actions/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AclActionsViewAll Get call Success ..."); 
        List<AclActions> getList = aclActionsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AclActionsViewAll Get call No Data ..."); 
        List<AclActions> getList = []; 
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
 
    String queryName = "AclactionsTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AclactionsTblRecSelectWhere"; 
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
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			name  	  
			category  	  
			acltype  	  
			aclaccess  	  
			deleted  	  
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
        print("API AclActionsViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AclActions> getList =       
      List<AclActions>.from(result.data![queryName].map((x) => 
            AclActions.fromJson(json.decode(json.encode(x).toString())))); 
 
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
    r'''{"query":"{\t\n\t''' +queryName+' '+queryParam+ r''' { \n\t  id , \n\t  dateEntered , \n\t  dateModified , \n\t  modifiedUserId , \n\t  createdBy , \n\t  name , \n\t  category , \n\t  acltype , \n\t  aclaccess , \n\t  deleted , \n\t  \n\t} \n}"}'''; 
 
      Uri uri = getEmUri(apiUrlGrql, apiGrqlPathPrefix);  
 
       final response = await http.post(uri,  
          body: query, headers: apiHeaders);  
 
        String procBody = response.body; 
 
        //print(procBody.toString()); 
 
        if (procBody.startsWith('{"errors":')) { 
          print("API AclActionsViewAll No G-Pkg Call - Got Errors"); 
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
        print("API AclActionsViewAll No G-Pkg call Success ...");  
        List<AclActions> getList =       
        List<AclActions>.from(json.decode(procBody)['data'][queryName].map((x) => 
            AclActions.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AclActionsViewAll Get call No Data ...");  
        List<AclActions> getList = [];  
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
 
  static Future AclActionsSelectWhere( 
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
          getEmUri(apiUrl, apiPathPrefix + "/acl_actions/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AclActionsSelectWhere Get call Success ..."); 
        List<AclActions> getList = aclActionsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AclActionsSelectWhere Get call No Data ..."); 
        List<AclActions> getList = []; 
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
 
    String queryName = "AclactionsTblRecSelectWhere"; 
    String queryParam = "(searchBy: \""+searchFilter.toString()+"\", sortBy: \""+sortBy.toString()+"\", page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")";  
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			name  	  
			category  	  
			acltype  	  
			aclaccess  	  
			deleted  	  
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
        print("API AclActionsViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AclActions> getList =       
      List<AclActions>.from(result.data![queryName].map((x) => 
            AclActions.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AclActionsFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/acl_actions/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AclActionsFindByColumnName Get call Success ..."); 
        List<AclActions> getList = aclActionsFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AclActionsFindByColumnName Get call No Data ..."); 
        List<AclActions> getList = []; 
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
  static Future AclActionsViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/acl_actions/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<AclActions> getList = aclActionsFromJson(response.body); 
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
 
    String queryName = "AclactionsTblRecViewAll"; 
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
        print("API AclActionsViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<AclActions> getList =       
      List<AclActions>.from(result.data![queryName].map((x) => 
            AclActions.fromJson(json.decode(json.encode(x).toString())))); 
 
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
 
  //Get a single AclActions by QUERY method 
  static Future AclActionsQuery(String id) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(id); 
      Map<String, String> parameters = {'id': id.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/acl_actions/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<AclActions> foundAclActions = aclActionsFromJson(response.body); 
        AclActions newAclActions = foundAclActions.elementAt(0); 
        return newAclActions; 
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
 
    String queryName = "AclactionsTblRecQuery"; 
    String queryParam = "(id: "+jsonEncode(id)+" )"; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			id  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			name  	  
			category  	  
			acltype  	  
			aclaccess  	  
			deleted  	  
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
        print("API AclActionsQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsQuery G-Pkg Get call Success ...");  
      } 
 
      List<AclActions> getList =       
      List<AclActions>.from(result.data![queryName].map((x) => 
            AclActions.fromJson(json.decode(json.encode(x).toString())))); 
 
        AclActions newAclActions = getList.elementAt(0); 
        return newAclActions; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AclActionsCreate(Map newAclActions) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/acl_actions/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAclActions), headers: apiHeaders); 
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
 
    String queryName = "AclactionsTblRecCreate"; 
    String queryParam = jsonEncode(newAclActions); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AclactionsTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			name  	  
			category  	  
			acltype  	  
			aclaccess  	  
			deleted  	  
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
        print("API AclActionsCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsCreate G-Pkg call Success ...");  
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
  static Future AclActionsEdit( 	
	      String id, AclActions aclActions) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/acl_actions/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(aclActions), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AclActions> foundAclActions = 	
	            aclActionsFromJson(response.body); 	
	        AclActions newAclActions = 	
	            foundAclActions.elementAt(0); 	
	        return newAclActions; 	
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
 
    String queryName = "AclactionsTblRecUpdate"; 
    String queryParam = jsonEncode(aclActions); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (id: '+jsonEncode(id)+' , AclactionsTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			id  	  
			dateEntered  	  
			dateModified  	  
			modifiedUserId  	  
			createdBy  	  
			name  	  
			category  	  
			acltype  	  
			aclaccess  	  
			deleted  	  
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
        print("API AclActionsEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsEdit G-Pkg call Success ...");  
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
	  static Future AclActionsDelete(String id) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(id); 	
		  Map<String, String> parameters = {'id': id.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/acl_actions/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AclactionsTblRecDelete"; 
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
        print("API AclActionsDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AclActionsDelete G-Pkg call Success ...");  
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
 
