// ignore_for_file: avoid_print 
 
import 'dart:async'; 
import 'dart:convert'; 
 
import 'package:graphql/client.dart'; 
import 'package:http/http.dart' as http; 
import 'package:em_app/em_global.dart'; 
import 'appusersview_model.dart'; 
 
class AppUsersViewService { 
 
  // ALWAYS REST CALLS : Spring Security permits URL based Sign-Up / Sign-In
  static Future AppUsersViewSelectWhere( 
	  int pageNo 
    , String searchFilter  
    , String sortBy  
  	 ) async { 
 
      Map<String, String> apiHeaders = {'Content-Type': 'application/json'}; 
 
    try { 
      Map<String, String> parameters = { 
        'searchBy': searchFilter,  
        'sortBy': sortBy, 
        'page': pageNo.toString(), 
        'size': apiPageSize.toString() 
        };  
 
      final response = await http.get( 
          getEmUri(apiUrl, apiPathPrefix + "/app_users_view/SelectWhere", parameters), headers: apiHeaders); 
 
      if (response.statusCode == 200) { 
        print("API AppUsersViewSelectWhere Get call Success ..."); 
        List<AppUsersView> getList = appUsersViewFromJson(response.body); 
        return getList; 
      } else if (response.statusCode == 204) { 
        print("API AppUsersViewSelectWhere Get call No Data ..."); 
        List<AppUsersView> getList = []; 
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
 
  static Future AppUsersViewCreate(Map newAppUsersView) async { 
 
      Map<String, String> apiHeaders = {'Content-Type': 'application/json'}; 
 
 
    Uri uri = getEmUri(apiUrl, apiPathPrefix + "/app_users_view/Create"); 
    //Map<String, String> headers = {'Content-Type': 'application/json'}; 
    try { 
      final response = await http.post(uri, 
          body: jsonEncode(newAppUsersView), headers: apiHeaders); 
      final status = response.statusCode; 
      if (status == 200 || status == 201) { 
        print("Inside Create try  Block"); 
        return "User Added Successfully"; 
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
	   	 
 
  } 

  /*
  //Call Edit Record API 	
  static Future AppUsersViewEdit( 	
	      String username, AppUsersView appUsersView) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(username); 	
		  Map<String, String> parameters = {'username': username.toString()}; 
    	Uri uri = getEmUri(apiUrl, apiPathPrefix + "/app_users_view/Update", parameters); 
    	//Map<String, String> headers = {'Content-Type': 'application/json'}; 
      	final response = await http.put(uri, 
          body: jsonEncode(appUsersView), headers: apiHeaders); 
	 	
	      final status = response.statusCode; 	
	      if (status == 200) { 	
	        /* 	
	        List<AppUsersView> foundAppUsersView = 	
	            appUsersViewFromJson(response.body); 	
	        AppUsersView newAppUsersView = 	
	            foundAppUsersView.elementAt(0); 	
	        return newAppUsersView; 	
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
 
    String queryName = "AppusersviewTblRecUpdate"; 
    String queryParam = jsonEncode(appUsersView); 
 
    queryParam =  '\n' + transformJsonForMutate(queryParam) +'\n'; 
 
    //print("-------------------------"); 
    //print(queryParam); 
    //print("-------------------------"); 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (username: '+jsonEncode(username)+' , AppusersviewTblRec1 : '+  
			queryParam 
			+ r''' ) {  
			username  	  
			password  	  
			email  	  
			roles  	  
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
        print("API AppUsersViewEdit G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AppUsersViewEdit G-Pkg call Success ...");  
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
	  static Future AppUsersViewDelete(String username) async { 	
 
      Map<String, String> apiHeaders = await getEmApiHeadersNew(); 
 
      if (isApiUseGrql == false) { 
 
		try { 	
	      //print(username); 	
		  Map<String, String> parameters = {'username': username.toString()}; 
	      final response = await http.delete(getEmUri( 	
	          apiUrl, apiPathPrefix + "/app_users_view/Delete", parameters), headers: apiHeaders); 	
	 	
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
 
    String queryName = "AppusersviewTblRecDelete"; 
    String queryParam = ""; 
 
      // ---------- Grql with package graphql 
    try {  
 
      // Use raw query via r'''  
      String query = r'''mutation {	 
        ''' +queryName+'   (username: '+jsonEncode(username)+' '  
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
        print("API AppUsersViewDelete G-Pkg call Errors ...");  
        print(result.exception.toString()); 
        return result.exception.toString(); 
      } else { 
        print("API AppUsersViewDelete G-Pkg call Success ...");  
	        return "Record Deleted Successfully"; 	
      } 
 
      //print("Step-2"); 
 
    } catch (err) {  
      print(err);   
      return connErrStr + " ( " + err.toString() + " ) ";  
    }  
 
    } //rest or gql 
 
	 } 	
   */
} 
 
