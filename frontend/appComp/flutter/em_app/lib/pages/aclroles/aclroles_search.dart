import 'package:flutter/material.dart'; 
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/aclroles/aclroles_model.dart'; 
import 'package:em_app/pages/aclroles/aclroles_service.dart'; 
import 'package:em_app/pages/aclroles/aclroles_lib.dart'; 
 
	class AclRolesSearch extends StatefulWidget { 	
	  const AclRolesSearch({Key? key}) : super(key: key); 	
	 	
	  @override 	
	  _AclRolesSearchState createState() => _AclRolesSearchState(); 	
	} 	
	 	
	class _AclRolesSearchState extends State<AclRolesSearch> { 	
	  final formKey = GlobalKey<FormState>(); 	
	  bool _isKeySelected = false; 	
	  double fullFormHeight = 800; 	
	  String _chosenValue = ""; 	
	 	
	  @override 	
	  Widget build(BuildContext context) { 	
		return Scaffold( 	
			backgroundColor: Colors.blue.shade200, 	
	        appBar: AppBar( 	
	          title: const Text("AclRoles Search Record"), 	
	          centerTitle: true, 	
	        ), 	
	        body: SingleChildScrollView( 	
	          child: Row( 	
	            mainAxisAlignment: MainAxisAlignment.center, 	
	            children: [ 	
	              Padding( 	
	                padding: const EdgeInsets.only(top: 32.0), 	
	                child: Container( 	
	                  width: getEmFormWidth(context), 	
	                  height: _isKeySelected ? fullFormHeight : 150, 	
	                  // margin: EdgeInsets.only(bottom: _isKeySelected ? 0 : 440), 	
	                  decoration: const BoxDecoration(boxShadow: [ 	
	                    BoxShadow( 	
	                      color: Colors.white, 	
	                    ), 	
	                  ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 	
	                  child: SingleChildScrollView(	
	                  child: Column( 	
	                    children: [ 	
	                      Padding( 	
	                        padding: const EdgeInsets.only(top: 44), 	
	                        child: SingleChildScrollView( 	
	                          child: Form( 	
	                            key: formKey, 	
	                            child: Row( 	
	                              mainAxisAlignment: MainAxisAlignment.center, 	
	                              children: [ 	
	                                SizedBox( 	
	                                  width: 260, 	
	                                  child: TextFormField( 	
	                                    //textAlign: TextAlign.center, 	
	                                    decoration: const InputDecoration( 	
	                                      hintText: 'Enter Search Value', 	
	                                      labelText: 'id', 	
	                                    ), 	
	                                    validator: (value) { 	
	                                      if (value!.isEmpty) { 	
	                                        return 'Field can not be empty'; 	
	                                      } else { 	
	                                        return null; 	
	                                      } 	
	                                    }, 	
	                                    onSaved: (value) { 	
	                                      setState(() { 	
	                                        _chosenValue = value.toString(); 	
	                                        _isKeySelected = true; 	
	                                      }); 	
	                                    }, 	
	                                  ), 	
	                                ), 	
	                                Builder( 	
	                                  builder: (context) => IconButton( 	
	                                      icon: const Icon( 	
	                                        Icons.search_sharp, 	
	                                        //color: Colors.blue, 	
	                                        //size: 32 	
	                                      ), 	
	                                      onPressed: () { 	
	                                        final isValid = 	
	                                            formKey.currentState!.validate(); 	
	 	
	                                        if (isValid) { 	
	                                          formKey.currentState!.save(); 	
	                                          _isKeySelected = true; 	
	                                        } 	
	                                      }), 	
	                                ) 	
	                              ], 	
	                            ), 	
	                          ), 	
	                        ), 	
	                      ), 	
	                      const SizedBox( 	
	                        height: 20, 	
	                      ), 	
	                      _isKeySelected 	
	                          ? FutureBuilder<AclRoles>( 	
	                              future: AclRolesService.AclRolesQuery(_chosenValue) 	
	                                  .then((value) => value), 	
	                              builder: (context, snapshot) { 	
	                                switch (snapshot.connectionState) { 	
	                                  case ConnectionState.waiting: 	
	                                    return const Center( 	
	                                        child: CircularProgressIndicator()); 	
	                                  default: 	
	                                    if (snapshot.hasError) { 	
	                                      return const Center( 	
	                                          child: 	
	                                              Text('Please Search For a valid Key Value')); 	
	                                    } else { 	
	                                      return AclRolesSearchResult( 	
	                                          foundAclRoles: snapshot.data!); 	
	                                    } 	
	                                } 	
	                              }) 	
	                          : const SizedBox( 	
	                              height: 0, 	
	                            ) 	
	                    ], 	
	                  ), 	
	                  ), 	
	                ), 	
	              ), 	
	            ], 	
	          ), 	
	        )); 	
	  } 	
	} 	
	 	
	class AclRolesSearchResult extends StatelessWidget { 	
	  final AclRoles foundAclRoles; 	
	  const AclRolesSearchResult({Key? key, required this.foundAclRoles}) : super(key: key); 	
	 	
	  @override 	
	  Widget build(BuildContext context) { 	
	return AclRoles_dispForm(context, foundAclRoles); 	
	  } 	
	} 	
 
