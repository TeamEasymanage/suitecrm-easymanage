// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_model.dart'; 
 
class AccountsCstmService { 
  //ViewAll api call 
  static Future AccountsCstmViewAll( 
	  int pageNo 
  	 ) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      Map<String, String> parameters = { 
        'pageNo' : pageNo.toString() 
      };  
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/ViewAll"  
      		, parameters 
          ), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AccountsCstmViewAll Get call Success ..."); 
        List<AccountsCstm> getList = accountsCstmFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsCstmViewAll Get call No Data ..."); 
        List<AccountsCstm> getList = []; 
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
 
    String queryName = "AccountscstmTblRecViewAll"; 
    String queryParam = ""; 
 
    if (pageNo >= 0 ) { 
      queryName = queryName+"Paged"; 
      queryParam = "(page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
 
	/* ------ SelectWhere Query ----------- (Uncomment to Use)  
    if (pageNo >= 0 ) { 
      queryName = "AccountscstmTblRecSelectWhere"; 
      queryParam = "(searchBy: \"  idC = 10 \" , page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")"; 
    } 
	 */ 
 
    if (isGrqlUseNoPkgForViewAllQry == false) { 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			idC  	  
			jjwgMapsLngC  	  
			jjwgMapsLatC  	  
			jjwgMapsGeocodeStatusC  	  
			jjwgMapsAddressC  	  
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
        print("API AccountsCstmViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AccountsCstm> getList =       
      List<AccountsCstm>.from(result.data![queryName].map((x) => 
            AccountsCstm.fromJson(json.decode(json.encode(x).toString())))); 
 
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
    r'''{"query":"{\t\n\t''' +queryName+' '+queryParam+ r''' { \n\t  idC , \n\t  jjwgMapsLngC , \n\t  jjwgMapsLatC , \n\t  jjwgMapsGeocodeStatusC , \n\t  jjwgMapsAddressC , \n\t  \n\t} \n}"}'''; 
 
      Uri uri = getEmUri(apiUrlGrql, apiGrqlPathPrefix);  
 
       final response = await http.post(uri,  
          body: query, headers: apiHeaders);  
 
        String procBody = response.body; 
 
        //print(procBody.toString()); 
 
        if (procBody.startsWith('{"errors":')) { 
          print("API AccountsCstmViewAll No G-Pkg Call - Got Errors"); 
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
        print("API AccountsCstmViewAll No G-Pkg call Success ...");  
        List<AccountsCstm> getList =       
        List<AccountsCstm>.from(json.decode(procBody)['data'][queryName].map((x) => 
            AccountsCstm.fromJson(json.decode(json.encode(x).toString())))); 
        return getList;  
        } else {  
        print("API AccountsCstmViewAll Get call No Data ...");  
        List<AccountsCstm> getList = [];  
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
 
  static Future AccountsCstmSelectWhere( 
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
          getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AccountsCstmSelectWhere Get call Success ..."); 
        List<AccountsCstm> getList = accountsCstmFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsCstmSelectWhere Get call No Data ..."); 
        List<AccountsCstm> getList = []; 
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
 
    String queryName = "AccountscstmTblRecSelectWhere"; 
    String queryParam = "(searchBy: \""+searchFilter.toString()+"\", sortBy: \""+sortBy.toString()+"\", page: "+pageNo.toString()+", size: "+apiPageSize.toString()+")";  
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			idC  	  
			jjwgMapsLngC  	  
			jjwgMapsLatC  	  
			jjwgMapsGeocodeStatusC  	  
			jjwgMapsAddressC  	  
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
        print("API AccountsCstmViewAll G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmViewAll G-Pkg Get call Success ...");  
      } 
 
      List<AccountsCstm> getList =       
      List<AccountsCstm>.from(result.data![queryName].map((x) => 
            AccountsCstm.fromJson(json.decode(json.encode(x).toString())))); 
 
      //print("Step-2"); 
 
      return getList;  
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
 
/* 
  static Future AccountsCstmFindByColumnName(String columnName) async { 
    try { 
      //print(columnName); 
      Map<String, String> parameters = {'columnName': columnName}; 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/FindByColumnName", parameters), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        print("API AccountsCstmFindByColumnName Get call Success ..."); 
        List<AccountsCstm> getList = accountsCstmFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AccountsCstmFindByColumnName Get call No Data ..."); 
        List<AccountsCstm> getList = []; 
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
  static Future AccountsCstmViewAllIds() async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      final response = await http 
          .get(getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/ViewAll"), headers: apiHeaders); 
      if (response.statusCode == 200) { 
        List<AccountsCstm> getList = accountsCstmFromJson(response.body); 
        List<String> idCList = 
            getList.map((e) => e.idC.toString()).toList(); 
        return idCList; 
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
 
    String queryName = "AccountscstmTblRecViewAll"; 
    String queryParam = ""; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
      idC   
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
        print("API AccountsCstmViewAllIds G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmViewAllIds G-Pkg Get call Success ...");  
      } 
 
      List<AccountsCstm> getList =       
      List<AccountsCstm>.from(result.data![queryName].map((x) => 
            AccountsCstm.fromJson(json.decode(json.encode(x).toString())))); 
 
        List<String> idCList = 
            getList.map((e) => e.idC.toString()).toList(); 
        return idCList; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  //Get a single AccountsCstm by QUERY method 
  static Future AccountsCstmQuery(String idC) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    try { 
      print(idC); 
      Map<String, String> parameters = {'idC': idC.toString()}; 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/Query", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        List<AccountsCstm> foundAccountsCstm = accountsCstmFromJson(response.body); 
        AccountsCstm newAccountsCstm = foundAccountsCstm.elementAt(0); 
        return newAccountsCstm; 
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
 
    String queryName = "AccountscstmTblRecQuery"; 
    String queryParam = "(idC: "+jsonEncode(idC)+" )"; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''query {	 
        ''' +queryName+' '+queryParam+ r''' {  
			idC  	  
			jjwgMapsLngC  	  
			jjwgMapsLatC  	  
			jjwgMapsGeocodeStatusC  	  
			jjwgMapsAddressC  	  
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
        print("API AccountsCstmQuery G-Pkg Get call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmQuery G-Pkg Get call Success ...");  
      } 
 
      List<AccountsCstm> getList =       
      List<AccountsCstm>.from(result.data![queryName].map((x) => 
            AccountsCstm.fromJson(json.decode(json.encode(x).toString())))); 
 
        AccountsCstm newAccountsCstm = getList.elementAt(0); 
        return newAccountsCstm; 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
  } 
 
  static Future AccountsCstmCreate(Map newAccountsCstm) async { 
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAccountsCstm), headers: apiHeaders); 
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
 
    String queryName = "AccountscstmTblRecCreate"; 
    String queryParam = jsonEncode(newAccountsCstm); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (AccountscstmTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			idC  	  
			jjwgMapsLngC  	  
			jjwgMapsLatC  	  
			jjwgMapsGeocodeStatusC  	  
			jjwgMapsAddressC  	  
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
        print("API AccountsCstmCreate G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmCreate G-Pkg call Success ...");  
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
  static Future AccountsCstmEdit( 	
	      String idC, AccountsCstm accountsCstm) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(idC); 	
		  Map<String, String> parameters = {'idC': idC.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/accounts_cstm/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(accountsCstm), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AccountsCstm> foundAccountsCstm = 	
	            accountsCstmFromJson(response.body); 	
	        AccountsCstm newAccountsCstm = 	
	            foundAccountsCstm.elementAt(0); 	
	        return newAccountsCstm; 	
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
 
    String queryName = "AccountscstmTblRecUpdate"; 
    String queryParam = jsonEncode(accountsCstm); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (idC: '+jsonEncode(idC)+' , AccountscstmTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			idC  	  
			jjwgMapsLngC  	  
			jjwgMapsLatC  	  
			jjwgMapsGeocodeStatusC  	  
			jjwgMapsAddressC  	  
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
        print("API AccountsCstmEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmEdit G-Pkg call Success ...");  
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
	  static Future AccountsCstmDelete(String idC) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(idC); 	
		  Map<String, String> parameters = {'idC': idC.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/accounts_cstm/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AccountscstmTblRecDelete"; 
    String queryParam = ""; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (idC: '+jsonEncode(idC)+' '  
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
        print("API AccountsCstmDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AccountsCstmDelete G-Pkg call Success ...");  
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
 
