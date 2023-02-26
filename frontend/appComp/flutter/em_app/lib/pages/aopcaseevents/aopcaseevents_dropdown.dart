import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_model.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_service.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_lib.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_data_table.dart'; 
 
 
class AopCaseEventsOnlyDd extends StatefulWidget { 
  const AopCaseEventsOnlyDd({Key? key}) : super(key: key); 
 
  @override 
  _AopCaseEventsOnlyDdState createState() => _AopCaseEventsOnlyDdState(); 
} 
 
class _AopCaseEventsOnlyDdState extends State<AopCaseEventsOnlyDd> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  List<AopCaseEvents> aopCaseEventsList = []; 
 
  //String? idSelected; 
  String? idSelected; 
  //double fullFormHeight = 700; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _loading = true;	
	
    AopCaseEventsService.AopCaseEventsViewAll( 	
    	0 //Use -1 For fetching All Data instead of 1st Page  	
      ).then((getList) { 	
      if (getList is String) {	
        setState(() {	
          errorMsg = getList;	
        });	
      }	
      setState(() { 	
       aopCaseEventsList = getList; 	
		idSelected = aopCaseEventsList[0].toListLabVal()[0][1].toString();	
		 //Remove duplicates 	
        //aopCaseEventsList = aopCaseEventsList.toSet().toList();	
        _loading = false;	
      });	
    });	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("AopCaseEvents DropDown Only "), 	
          centerTitle: true, 	
        ), 	
        body: _loading 	
            ? EmShowProgress(msg: errorMsg)	
            : SingleChildScrollView(	
                child: Row(	
                  mainAxisAlignment: MainAxisAlignment.center,	
                  children: [	
                    Padding(	
                      padding: const EdgeInsets.only(top: 32.0),	
                      child: Container(	
						 width: emFormFixedWidth, //getEmFormWidth(context),	
                        //width: 600,	
                        //height: _isKeySelected ? fullFormHeight : 150,	
                        // margin: EdgeInsets.only(bottom: _isKeySelected ? 0 : 440),	
                        decoration: const BoxDecoration(	
                            boxShadow: [BoxShadow(color: Colors.white)],	
                            borderRadius:	
                                BorderRadius.all(Radius.circular(10.0))),	
                        child: Column(	
                          children: [	
                            Padding(	
                              padding: const EdgeInsets.only(top: 44),	
                              child: SingleChildScrollView(	
                                scrollDirection: Axis.horizontal,	
                                child: Row(	
                                  mainAxisAlignment: MainAxisAlignment.center,	
                                  children: [	
                                    const Text("DropDown: ",	
                                      //style: Theme.of(context).textTheme.bodyText1,	
                                    ),	
                                    const SizedBox(	
                                      width: 24,	
                                    ),	
                                    DropdownButton<String>(	
                                      borderRadius: BorderRadius.circular(5),	
                                      dropdownColor: Colors.white,	
                                      value: idSelected,	
                                      style: const TextStyle(	
                                          //fontSize: 18,	
                                          //fontWeight: FontWeight.w400,	
                                          color: Colors.black),	
                                      items: aopCaseEventsList	
                                          .map((e) => DropdownMenuItem(	
                                                child: Text(e.toListLabVal()[0][1].toString()), //for 2nd field label use: e.toListLabVal()[1][1]	
                                                value: e.toListLabVal()[0][1].toString(),	
                                              ))	
                                          .toList(),	
                                      hint: const Text(	
                                        "Please select a value",	
                                        //style: Theme.of(context).textTheme.bodyText1,	
                                      ),	
                                      onChanged: (value) {	
                                        setState(() {	
                                          //_isKeySelected = true;	
                                          idSelected = value;	
                                        });	
                                      },	
                                    ),	
                                  ],	
                                ),	
                              ),	
                            ),	
                            const SizedBox(	
                              height: 20,	
                      ), 	
                    ], 	
                  ), 	
                ), 	
               ),	
             ],	
           ),	
        )); 	
  } 	
} 
 
 
class AopCaseEventsEditDd extends StatefulWidget { 
  //need 1st record column and type also 
  final String idSelected; 
  const AopCaseEventsEditDd({Key? key, required this.idSelected}) : super(key: key); 
 
  @override 
  _AopCaseEventsEditDdState createState() => _AopCaseEventsEditDdState(); 
} 
 
class _AopCaseEventsEditDdState extends State<AopCaseEventsEditDd> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  bool _isKeySelected = false; 	
  //double fullFormHeight = 700; 	
 	
  List<String> _ids = ["Select A Key Value"]; 	
  String _chosenValue = "Select A Key Value"; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _chosenValue = widget.idSelected.toString();	
    _loading = true;	
	
    AopCaseEventsService.AopCaseEventsViewAllIds().then((ids) { 	
      if (ids is String) {	
        setState(() {	
          errorMsg = ids;	
        });	
      }	
      setState(() { 	
        _ids = ids; 	
        _ids.insert(0, "Select A Key Value");	
		 //Remove duplicates 	
        _ids = _ids.toSet().toList();	
        _loading = false;	
      });	
    });	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("AopCaseEvents Edit Dd Form"), 	
          centerTitle: true, 	
        ), 	
        body: _loading 	
            ? EmShowProgress(msg: errorMsg)	
            : SingleChildScrollView(	
                child: Row(	
                  mainAxisAlignment: MainAxisAlignment.center,	
                  children: [	
                    Padding(	
                      padding: const EdgeInsets.only(top: 32.0),	
                      child: Container(	
						 width: emFormFixedWidth, //getEmFormWidth(context),	
                        //width: 600,	
                        //height: _isKeySelected ? fullFormHeight : 150,	
                        // margin: EdgeInsets.only(bottom: _isKeySelected ? 0 : 440),	
                        decoration: const BoxDecoration(	
                            boxShadow: [BoxShadow(color: Colors.white)],	
                            borderRadius:	
                                BorderRadius.all(Radius.circular(10.0))),	
                        child: Column(	
                          children: [	
                            Padding(	
                              padding: const EdgeInsets.only(top: 44),	
                              child: SingleChildScrollView(	
                                scrollDirection: Axis.horizontal,	
                                child: Row(	
                                  mainAxisAlignment: MainAxisAlignment.center,	
                                  children: [	
                                    const Text("Select Key: ",	
                                      //style: Theme.of(context).textTheme.bodyText1,	
                                    ),	
                                    const SizedBox(	
                                      width: 24,	
                                    ),	
                                    DropdownButton<String>(	
                                      borderRadius: BorderRadius.circular(5),	
                                      dropdownColor: Colors.white,	
                                      value: _chosenValue,	
                                      style: const TextStyle(	
                                          //fontSize: 18,	
                                          //fontWeight: FontWeight.w400,	
                                          color: Colors.black),	
                                      items: _ids	
                                          .map((e) => DropdownMenuItem(	
                                                child: Text(e),	
                                                value: e,	
                                              ))	
                                          .toList(),	
                                      hint: const Text(	
                                        "Please select a value",	
                                        //style: Theme.of(context).textTheme.bodyText1,	
                                      ),	
                                      onChanged: (value) {	
                                        setState(() {	
                                          _isKeySelected = true;	
                                          _chosenValue = value.toString();	
                                        });	
                                      },	
                                    ),	
                                  ],	
                                ),	
                              ),	
                            ),	
                            const SizedBox(	
                              height: 20,	
                      ), 	
                      _isKeySelected 	
                          ? FutureBuilder<AopCaseEvents>( 	
                              future: AopCaseEventsService 	
                                      .AopCaseEventsQuery(_chosenValue) 	
                                  .then((value) => value), 	
                              builder: (context, snapshot) { 	
                                switch (snapshot.connectionState) { 	
                                  case ConnectionState.waiting: 	
                                    return const Center( 	
                                        child: CircularProgressIndicator()); 	
                                  default: 	
                                    if (snapshot.hasError) { 	
                                      return const Center( 	
                                          child: Text('Record not found, Select Valid Key Value')); 	
                                    } else { 	
                                      return AopCaseEventsEditDdRec( 	
                                          aopCaseEvents: snapshot.data!); 	
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
             ],	
           ),	
        )); 	
  } 	
} 
 
class AopCaseEventsEditDdRec extends StatefulWidget { 
  final AopCaseEvents aopCaseEvents; 
  const AopCaseEventsEditDdRec({Key? key, required this.aopCaseEvents}) : super(key: key); 
 
  @override 
  _AopCaseEventsEditDdRecState createState() => _AopCaseEventsEditDdRecState(); 
} 
 
class _AopCaseEventsEditDdRecState extends State<AopCaseEventsEditDdRec> { 
  AopCaseEvents foundAopCaseEvents = AopCaseEvents(id: "" ); 
 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String idVar = ""; 
		String? nameVar = ""; 
		String? dateEnteredVar = ""; 
		String? dateModifiedVar = ""; 
		String? modifiedUserIdVar = ""; 
		String? createdByVar = ""; 
		String? descriptionVar = ""; 
		String? deletedVar = ""; 
		String? assignedUserIdVar = ""; 
		String? caseIdVar = ""; 
 
 
 
 
@override 
void didChangeDependencies() { 
    // MediaQuery.of(context) 
      emFormWidth =  getEmFormWidth(context); 
      emFormHeight = getEmFormHeight(context); 
      //print("Width | Height " + emFormWidth.toString() + " | " + emFormHeight.toString()); 
    super.didChangeDependencies(); 
} 
 
 
  @override 
  void initState() { 
    super.initState(); 
    setState(() { 
      foundAopCaseEvents = widget.aopCaseEvents; 
    }); 
  } 
 
 
  @override 
  Widget build(BuildContext context) { 
    return SingleChildScrollView( 
 
          child: Container( 
            padding: const EdgeInsets.only(top: 8.0), 
            decoration: const BoxDecoration(boxShadow: [ 
              BoxShadow( 
                color: Colors.white, 
              ), 
            ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
			  width: emFormWidth, //getEmFormWidth(context), 
	          height: emFormHeight, //MediaQuery.of(context).size.height, 
   	      //width: MediaQuery.of(context).size.width, 
             //width: 600, 
             //height: 620, 
           child: SingleChildScrollView( 
            child: Form( 
              key: formKey, 
              //autovalidateMode: AutovalidateMode.onUserInteraction, 
 
              child: Padding( 
                padding: const EdgeInsets.all(16.0), 
                child: SingleChildScrollView( 
                  child: Column(  
                children: [ 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [1] [ Name [Id] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 36, Display Size : 20 
				  // Flutter Details: Field Label [Id], Name [id], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					   enabled: false,    initialValue: getEmStrOpt(foundAopCaseEvents.id),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Id', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 36, Display Size : 20 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => idVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [2] [ Name [Name] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 255, Display Size : 20 
				  // Flutter Details: Field Label [Name], Name [name], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.name),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Name', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 255, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => nameVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Dateentered] : EM Type [DATETIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 19, Display Size : 19 
				  // Flutter Details: Field Label [Date Entered], Name [dateEntered], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.dateEntered),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(19), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Date Entered', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 19, Display Size : 19 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => dateEnteredVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [Datemodified] : EM Type [DATETIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 19, Display Size : 19 
				  // Flutter Details: Field Label [Date Modified], Name [dateModified], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.dateModified),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(19), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Date Modified', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 19, Display Size : 19 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => dateModifiedVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [Modifieduserid] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 36, Display Size : 20 
				  // Flutter Details: Field Label [Modified User Id], Name [modifiedUserId], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.modifiedUserId),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Modified User Id', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 36, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => modifiedUserIdVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [Createdby] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 36, Display Size : 20 
				  // Flutter Details: Field Label [Created By], Name [createdBy], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.createdBy),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Created By', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 36, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => createdByVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [7] [ Name [Description] : EM Type [TEXT], Java Type [String]  
				  //                  EM size: maxlength: 3, Display Size : 50 
				  // Flutter Details: Field Label [Description], Name [description], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
						keyboardType: TextInputType.multiline,  
							maxLines: 3, 
					//em size: Lines : Size: 3, Columns : Display Size: 50 
					      initialValue: getEmStrOpt(foundAopCaseEvents.description),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(50), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Description', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 3, Display Size : 50 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => descriptionVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [8] [ Name [Deleted] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 0, Display Size : 20 
				  // Flutter Details: Field Label [Deleted], Name [deleted], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.deleted),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Deleted', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 0, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => deletedVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [9] [ Name [Assigneduserid] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 36, Display Size : 20 
				  // Flutter Details: Field Label [Assigned User Id], Name [assignedUserId], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.assignedUserId),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Assigned User Id', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 36, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => assignedUserIdVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [10] [ Name [Caseid] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 36, Display Size : 20 
				  // Flutter Details: Field Label [Case Id], Name [caseId], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundAopCaseEvents.caseId),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Case Id', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 36, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => caseIdVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
                  const SizedBox(height: 20,), 
                  Builder( 
                    builder: (context) => ButtonWidget( 
                      text: 'Submit', 
                      onClicked: () async { 
                        final isValid = formKey.currentState!.validate(); 
                        // FocusScope.of(context).unfocus(); 
 
                        if (isValid) { 
                          formKey.currentState!.save(); 
 
                          String apiMessage = ""; 
 
						// ========================================================================================================= 
						// ===== BEGIN BLOCK : Calling API Service Calls ('Edit') 1st (optional 2nd...) and Routing to Next Screen 
 
                          // ===== Begin Table-1: Model Assign And Edit Service Call 
 
                          AopCaseEvents newAopCaseEvents = AopCaseEvents( 
					   id: idVar , 
					   name: nameVar , 
					   dateEntered: dateEnteredVar , 
					   dateModified: dateModifiedVar , 
					   modifiedUserId: modifiedUserIdVar , 
					   createdBy: createdByVar , 
					   description: descriptionVar , 
					   deleted: deletedVar , 
					   assignedUserId: assignedUserIdVar , 
					   caseId: caseIdVar , 
							  ); 
 
                          await AopCaseEventsService.AopCaseEventsEdit( 
                                  newAopCaseEvents.id, 
                                  newAopCaseEvents) 
                              .then((message) { 
                                    apiMessage = message; 
                                    message == "Record Updated Successfully" 
                                        ? null	
                                        : showDialog(	
                                            context: context,	
                                            builder: (ctx) => AlertDialog(	
                                              title: const Text("Error Status"),	
                                              content: Text(message),	
                                              actions: <Widget>[	
                                                ElevatedButton(	
                                                  onPressed: () {	
                                                    Navigator.of(ctx).pop();	
                                                  },	
                                                  child: const Text("OK"),	
                                                ),	
                                              ],	
                                            ),	
                                          );	
	
                            final snackBar = SnackBar( 
                              //duration: const Duration(seconds: 10), //default is 4 sec 
                              padding: const EdgeInsets.symmetric( 
                                  horizontal: 50, vertical: 8), 
                              content: Text( 
                                message, 
                                //style: Theme.of(context).textTheme.headline5, 
                              ), 
                              backgroundColor: 
                                  message == "Record Updated Successfully" 
                                      ? Colors.green 
                                      : Colors.redAccent, 
                            ); 
                            ScaffoldMessenger.of(context) 
                                .showSnackBar(snackBar); 
	 
                          }); 
 
                          // ===== End Table-1: Model Assign And Edit Service Call 
 
                          // ===== Begin Table-2: Model Assign And Edit Service Call 
                          			// If Saving Data to 2 tables is required, Copy/Place those calls here 
 
                          // ===== End Table-2: Model Assign And Edit Service Call 
 
 
                          // ===== Begin: Routing To ListView To Display Data 
                          // ===== Clear Routes As Back buttons leading to previous screens showing old data state are avoided 
                          /* */
                            apiMessage == "Record Updated Successfully" 
                            ?  
                            Navigator.pushAndRemoveUntil(  
                              context,  
                              MaterialPageRoute(   
                                      builder: (context) =>  const AopCaseEventsDataTable(viewType: "ListView"),   
                                      				//If Premium: Use parameter to show presently added/edited record 
                                      				//searchClause: " key = 'value' ",  
                                    ),  
                              (Route<dynamic> route) => route.isFirst  
                              ) 
                              : null;  
                          /* */ 
                          // ===== End: Routing To ListView To Display Data 
 
                          // ===== Begin: More Routing Options 
 
								/* To implement RETURN to 1 or 2 Levels BACK -------  
								int popCount = 0;  
                            	apiMessage == "Record Updated Successfully" 
								? 	 
									//Exit 2 levels as data table view not refreshed  
									Navigator.of(context).popUntil((_) => popCount++ >= 2)  
									//Navigator.of(context).pop()   
								: null;  
								*/  
 
                          // ===== End: More Routing Options 
 	
 
						// ===== END BLOCK : Calling API Service Calls ('Edit') 1st (optional 2nd...) and Routing to Next Screen 
						// ========================================================================================================= 
 
                        } //if form valid 
                      },  //onClicked  
                    ), //ButtonWidget 
                  ) //Builder 
                ], 
              ), 
            ), 
          ), 
          ), 
          ), 
          ), 
      ); 
  } 
} 
 
 
bool _isNumeric(String s) { 
  // ignore: unnecessary_null_comparison 
  if (s == null) { 
    return false; 
  } 
  return double.tryParse(s) != null; 
} 
 
class ButtonWidget extends StatelessWidget { 
  final String text; 
  final VoidCallback onClicked; 
 
  const ButtonWidget({ 
    required this.text, 
    required this.onClicked, 
    Key? key, 
  }) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) => ElevatedButton( 
        child: Text( 
          text, 
          style: const TextStyle(fontSize: 24, color: Colors.white), 
        ), 
        style: ButtonStyle( 
            backgroundColor: MaterialStateProperty.all<Color>( 
                Theme.of(context).primaryColor), 
            minimumSize: MaterialStateProperty.all(const Size(300, 40)),  
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>( 
                const EdgeInsets.symmetric(horizontal: 2.0, vertical: 16.0))), 
        onPressed: onClicked, 
      ); 
} 
 
 
