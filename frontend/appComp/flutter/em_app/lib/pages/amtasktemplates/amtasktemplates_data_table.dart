import 'package:flutter/material.dart'; 
import 'package:adaptive_scrollbar/adaptive_scrollbar.dart'; 
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_model.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_service.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_lib.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_form.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_edit.dart'; 
 
class AmTasktemplatesDataTable extends StatefulWidget { 
  final String? viewType; 
  final int? pageNo; 
  final String? searchClause; 
  final String? sortClause; 
  const AmTasktemplatesDataTable({Key? key, this.viewType  
  , this.pageNo 
  , this.searchClause 
  , this.sortClause 
  }) : super(key: key); 
 
  @override 
  _AmTasktemplatesDataTableState createState() => _AmTasktemplatesDataTableState(); 
} 
 
class _AmTasktemplatesDataTableState extends State<AmTasktemplatesDataTable> { 
  String dispType = "DataTable"; 
  String emTitle =  "AmTasktemplates Data Table"; 
  int noOfCardsPerRow = 2; 
  int noOfFieldsForCard = 2; 
 
  String errorMsg = timeErrStr; 
 
  List<AmTasktemplates> amTasktemplatesList = []; 
 
  bool _loading = true; 
  int? sortColumnIndex; 
  bool isAscending = false; 
  bool showFLButtons = true; 
 
  final double formWidth =   400 + (200 * 20) ; //400 + (200 * NoOfColumns)
 
  final ScrollController horizontalScroll = ScrollController(); 
  final ScrollController verticalScroll = ScrollController(); 
  final double scrollBarWidth = 20; 
  final ScrollController horizontalScrollLv = ScrollController(); 
 
  int currPageNo = 0; 
  String searchFilter = "";  
  String sortBy = "";  
 
  @override 
  void initState() { 
    super.initState(); 
    if(widget.pageNo != null) { 
      currPageNo = widget.pageNo!; 
    } 
    if(widget.searchClause != null) {  
      searchFilter = widget.searchClause!;  
    }  
    if(widget.sortClause != null) {  
      sortBy = widget.sortClause!;  
    }  
    //print("Current Page No : "+currPageNo.toString()); 
    if (widget.viewType != null ) { 
 
      switch (widget.viewType) { 
        case "ListView": { 
        dispType = "ListView"; 
        emTitle = "AmTasktemplates List View"; 
        } 
        break; 
        case "ListCard": { 
        dispType = "ListCard"; 
        emTitle = "AmTasktemplates List Card"; 
        } 
        break; 
        default: 
      } 
    } 
    //print("View Type : " + dispType);  
	 //print("formWidth : " + formWidth.toString()); 
    _loading = true; 
 
	if (searchFilter.isNotEmpty) { 
 
    print("Calling Service : AmTasktemplatesSelectWhere ... "); 
    print("searchClause: [" +searchFilter +"]");  
    print("sortClause: [" +sortBy +"]");  
    AmTasktemplatesService.AmTasktemplatesSelectWhere( 
      currPageNo 
      , searchFilter 
      , sortBy 
    ).then((getList) { 
      if (getList is String) { 
        setState(() { 
          errorMsg = getList; 
        }); 
      } else { 
      setState(() { 
        amTasktemplatesList = getList; 
        _loading = false; 
      }); 
      }  
    }); 
 
    } else { 
    print("Calling Service : AmTasktemplatesViewAll ... "); 
    AmTasktemplatesService.AmTasktemplatesViewAll( 
      currPageNo 
    ).then((getList) { 
      if (getList is String) { 
        setState(() { 
          errorMsg = getList; 
        }); 
      } else { 
      setState(() { 
        amTasktemplatesList = getList; 
        _loading = false; 
      }); 
      }  
    }); 
  } 
 
  } 
 
 /* ---------- To Implement - GET value from Hive and FindByColumnName -------------------  
  String userCode = ""; 
 
  bool _loadingProvider = true; 
 
 
    Future<void> getUserName() async {
    var usersBox = await Hive.openBox('users');
    var localUser = usersBox.get("userKey");
 
    print("localUser "+localUser.toString());
    setState(() {
      if( localUser != null ) {
      userCode = localUser.emUserId;
      }
      _loadingProvider = false; 
    });
 
    _loading = true; 
    print("Calling Service : AmTasktemplatesFindByColumnName ... "); 
    if (userCode.isNotEmpty) {
    AmTasktemplatesService.AmTasktemplatesFindByColumnName(userCode).then((getList) {
      if (getList is String) {
        setState(() {
          errorMsg = getList;
        });
      } else {
        setState(() {
        amTasktemplatesList = getList; 
          _loading = false;
        });
      }
    });
 
    }
 
  }
 
 
  @override 
  void initState() { 
    super.initState(); 
 
    if (widget.viewType != null) {
      switch (widget.viewType) {
        case "ListView": { 
        dispType = "ListView"; 
        emTitle = "AmTasktemplates List View"; 
        } 
        break; 
        case "ListCard": { 
        dispType = "ListCard"; 
        emTitle = "AmTasktemplates List Card"; 
        } 
          break;
        default:
      }
    }
    getUserName();
  } 
 
*/ 
 
  @override 
  Widget build(BuildContext context) { 
 
 /* ------------------------------------------- 
  Code-Help [CH] : Override / Hide Previous Screen SnackBar Displaying on loading this Screen 
 		1-Uncomment and USE Below lines, and import 'package:flutter/scheduler.dart';  
  ------------------------------------------- */ 
    //SchedulerBinding.instance.addPostFrameCallback((_) { 
    //    ScaffoldMessenger.of(context).hideCurrentSnackBar();  
    //}); 
 
    return Scaffold( 
        backgroundColor: Colors.blue.shade200, 
        appBar: AppBar( 
          title: Text(_loading ? 'Loading...' : emTitle), 
          centerTitle: true, 
        ), 
        body: _loading 
            ? EmShowProgress( 
                msg: errorMsg, 
              ) 
            : getDispViewAsPerType() 
    );  
  } 
 
 
Widget getDispViewAsPerType() { 
 
              switch (dispType) { 
                case "ListView": {  
                return Column( 
                  children: [ 
                    Center (child: pageTab(context)), 
                    Center (child: getListView()), 
                  ], 
                );  
                }  
                case "ListCard": { 
                //Pagination for ListCard  
                return Column( 
                  children: [ 
                    Container (child: pageTab(context)), 
                    SizedBox ( 
                      height: MediaQuery.of(context).size.height - 150, 
                      width: MediaQuery.of(context).size.width, 
                      child: getListCard()), 
                  ], 
                );  
                //No Pagination for ListCard  
                //return Center (child: getListCard()); 
                }  
              } 
                return Center (child: getDataTableView()); 
 
} 
 
// --------------- DataTable View ------------------- 
Container getDataTableView() { 
 
          return Container(  
                    height: MediaQuery.of(context).size.height, 
					 width: formWidth, 
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10), 
                    //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
                    decoration: const BoxDecoration( 
                      //color: Colors.blue.shade200, 
                    ), 
                   //------------------------------------ Scrollbars 	
                    child: AdaptiveScrollbar( 	
                        controller: verticalScroll, 	
                        width: scrollBarWidth, 	
                        scrollToClickDelta: 75, 	
                        scrollToClickFirstDelay: 200, 	
                        scrollToClickOtherDelay: 50, 	
                        sliderDecoration: BoxDecoration( 	
                          color: Colors.grey.shade100, 	
                          borderRadius: 	
                              const BorderRadius.all(Radius.circular(5)), 	
                        ), 	
                        sliderActiveDecoration: BoxDecoration( 	
                          color: Colors.grey.shade300, 	
                          borderRadius: 	
                              const BorderRadius.all(Radius.circular(5)), 	
                        ), 	
                        underColor: Colors.transparent, 	
                        child: AdaptiveScrollbar( 	
                            underSpacing: EdgeInsets.only(bottom: scrollBarWidth), 	
                            controller: horizontalScroll, 	
                            width: scrollBarWidth, 	
                            position: ScrollbarPosition.bottom, 	
                            sliderDecoration: BoxDecoration( 	
                              color: Colors.grey.shade300, 	
                              borderRadius: 	
                                  const BorderRadius.all(Radius.circular(5)), 	
                            ), 	
                            sliderActiveDecoration: BoxDecoration( 	
                              color: Colors.grey.shade500, 	
                              borderRadius: 	
                                  const BorderRadius.all(Radius.circular(5)), 	
                            ), 	
                            underColor: Colors.transparent, 	
                            child: SingleChildScrollView( 	
                                controller: horizontalScroll, 	
                                scrollDirection: Axis.horizontal, 	
                                child: SingleChildScrollView( 	
                                    clipBehavior: Clip.none, 	
                                    controller: verticalScroll, 	
                                    scrollDirection: Axis.vertical, 	
                                    child: SizedBox( 	
                                      width: formWidth , 	
                   //------------------------------------ Scrollbars 	
                        child: PaginatedDataTable( 
                      //columnSpacing: 100, 
                      //horizontalMargin: 30, 
                      rowsPerPage: 5, 
                      showFirstLastButtons: showFLButtons, 
                      //showCheckboxColumn: false, 
                      sortAscending: isAscending, 
                      sortColumnIndex: sortColumnIndex, 
                      arrowHeadColor: Colors.black, 
                      source: AmTasktemplatesDataSource(amTasktemplatesList), 
                      columns: <DataColumn>[ 
                DataColumn( 
                    label: const Text('Id'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Name'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Date Entered'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Date Modified'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Modified User Id'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Created By'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Description'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Deleted'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Assigned User Id'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Status'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Priority'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Percent Complete'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Predecessors'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Milestone Flag'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Relationship Type'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Task Number'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Order Number'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Estimated Effort'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Utilization'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Duration'), onSort: doColumnSort), 
                      const DataColumn( 
                        label: Text( 
                          'Edit/Delete', 
                          //style: Theme.of(context).textTheme.headline4, 
                        ), 
                      ), 
                      ], 
 
                    				), 
                                   )))))); 
  } 
 
 
// --------------- List Card View ------------------- 
  GridView getListCard() { 
    Iterable AmTasktemplatesCardList = 
        amTasktemplatesList.map((e) =>  
     SizedBox( 
      //height and width property have no effect 
 
      child: (Card( 
        child: Padding( 
          padding: const EdgeInsets.all(8.0), 
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [ 
              const Icon( 
                Icons.person, 
                  size: 60, 
                color: Colors.indigoAccent, 
              ), 
              getColumnsForListCard1(e), 
              /* 
              Text( 
                e.personId.toString(), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.name.toString(), 
                style: 
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.phone.toString(), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.email.toString(), 
              ), 
              */ 
              OutlinedButton( 
            onPressed: () {}, 
            child:const Text("Add"), 
            style: ButtonStyle( 
                minimumSize: MaterialStateProperty.all(const Size(140, 38)), 
                //backgroundColor: MaterialStateProperty.all(const Color(0x33333333)), 
                ), 
            ), 
            ], 
          ), 
        ), 
      )), 
    ) 
    ); 
 
    return GridView.count( 
        primary: false, 
        padding: const EdgeInsets.all(10), 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10, 
        crossAxisCount: noOfCardsPerRow, //2, 
        children: List.from(AmTasktemplatesCardList) 
    ); 
  } 
 
  Widget getColumnsForListCard1(AmTasktemplates e) { 
    var noOfFields = e.toMapLabelVal().length; 
    //print (noOfFields); 
 
    var children = <Widget>[]; 
    for (var i = 0; i < noOfFields && i < noOfFieldsForCard ; i++) { 
    children.add( 
              Text( 
                //e.toListLabVal()[i].toString(), 
                //e.toListLabVal()[i][0].toString() + ":" + 
                e.toListLabVal()[i][1].toString(), 
              ) 
    ); 
    children.add( 
              const SizedBox( 
                height: 8, 
              ) 
    ); 
    } 
    return Column( 
    children: children, 
    ); 
 
    //return  Column (children : const [Text("XYZ")]); 
  } 
 
// --------------- List View ------------------- 
 
  SingleChildScrollView getListView() {  
    return SingleChildScrollView(  
        scrollDirection: Axis.vertical, 
      child: SingleChildScrollView( 
        scrollDirection: Axis.horizontal, 
        child: Padding(  
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.start,  
            mainAxisSize: MainAxisSize.min, 
            children: [  
              Container(  
                height: MediaQuery.of(context).size.height - 160, //* 0.85 
                width: MediaQuery.of(context).size.width * 0.90,  
                padding: const EdgeInsets.only(top: 8.0),  
                decoration: const BoxDecoration(boxShadow: [  
                  BoxShadow(  
                    color: Colors.white,  
                  ),  
                ], borderRadius: BorderRadius.all(Radius.circular(10.0))),  
                child: SingleChildScrollView( 
                  scrollDirection: Axis.vertical, 
                  child: Scrollbar( 
                    controller: horizontalScrollLv, 
                  child: SingleChildScrollView(  
                    controller: horizontalScrollLv, 
                    scrollDirection: Axis.horizontal,  
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      children: [  
                        _buildListView(),  
                      ],  
                    ),  
                  ), 
                  ), 
                ),   
              ),  
            ],  
          ),  
        ), 
      ),  
    );  
  }  
 
Widget _buildListView() {  
   
    if (amTasktemplatesList.length == 0) { 
    return Column( 
      children: [ 
        Text("No Data."), // - Please Add records to see more options 
						//Add Record Button 
                            IconButton( 	 
                              onPressed: () { 	 
                                Navigator.of(context).push(MaterialPageRoute( 	 
                                  builder: (context) =>  
                                  const AmTasktemplatesForm(), 	 
                                  ), 	 
                                ); 	 
                              }, 	 
                              icon: const Icon( 	 
                                Icons.add_circle_outline, 	 
                                color: Colors.blueGrey, 	 
                            )), 	 
						 
      ], 
    ); 
    
    } else { 
   
    var noOfFields = amTasktemplatesList[0].toMapLabelVal().length;  
    //print (noOfFields);  
   
    var dataColumns = <DataColumn>[];  
   
    for (var i = 0; i < noOfFields ; i++) {  
      if (i==0) { 
      dataColumns.add(  
              const DataColumn( 
                label: Text("") 
                ) 
      ); 
      } 
    dataColumns.add(  
              DataColumn( 
                label: Text(  
                            amTasktemplatesList[0].toListLabVal()[i][0].toString(),  
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600) 
                            ) 
                ),  
    );  
    }  
   
    return DataTable(  
      columns: dataColumns, 
      /* <DataColumn>[  
        DataColumn(label: Text(amTasktemplatesList[0].toListLabVal()[0][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),  
        DataColumn(label: Text(amTasktemplatesList[0].toListLabVal()[1][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),  
      ],  
      */ 
      rows: amTasktemplatesList  
          .map((e) =>  
              getDataRow(e) 
          ).toList(),  
    );  
    } 
  }  
    
DataRow getDataRow(AmTasktemplates oh) { 
    var noOfFields = oh.toMapLabelVal().length;  
    //print (noOfFields);  
   
    var dataCells = <DataCell>[];  
    for (var i = 0; i < noOfFields ; i++) {  
   
      if (i==0) { 
          dataCells.add(  
              DataCell(Row( 	 
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 	 
                children: [ 	 
                  Builder(builder: (context) { 	 
                    return  
                    Row( 
                      children: [ 
                        IconButton( 	 
                            onPressed:  () => showDialog<String>( 	 
                                context: context, 	 
                                builder: (BuildContext context) => AlertDialog(  
                                  insetPadding: EdgeInsets.zero,	 
                                  title: Text('AmTasktemplates Details', 	 
                                      style: TextStyle( 	 
                                          color: Colors.red.shade400, 	 
                                          //fontSize: 22, 	 
                                          //fontWeight: FontWeight.w400 	 
                                          )), 	 
                                  content: _AmTasktemplatesInfo(foundAmTasktemplates: oh), 	 
                                  actions: <Widget>[ 	 
                                    TextButton( 	 
                                      onPressed: () => Navigator.pop(context), 	 
                                      child: const Text('Done'), 	 
                                    ), 	 
                                  ], 	 
                                ), 	 
                              ), 	 
                            icon: const Icon( 	 
                              Icons.preview_outlined, 	 
                              color: Colors.blueGrey, 	 
                            )), 
                        IconButton( 	 
                            onPressed:  () => showDialog<String>( 	 
                                context: context, 	 
                                builder: (BuildContext context) => AlertDialog(  
                                  insetPadding: EdgeInsets.zero,	 
                                  title: Text('Linked Table View Data', 	 
                                      style: TextStyle( 	 
                                          color: Colors.red.shade400, 	 
                                          //fontSize: 22, 	 
                                          //fontWeight: FontWeight.w400 	 
                                          )), 	 
                                  content: Container( 
                                    child: Column( 
                                      mainAxisSize: MainAxisSize.min, 
                                      children: [ 
                                        Text("Record Id: " +oh.id.toString() ), 
                                        const Text(""), 
                                        const Text("Note: Please Edit Linked Table in dart file. Demo of Self Table link here."), 
                                        const Text(""), 
                                        const Text("Click Go to View Data"), 
                                      ], 
                                    ), 
                                  ), 	  
                                  actions: <Widget>[ 	 
                                    TextButton( 	 
                                      onPressed: () => Navigator.pop(context, 'Back'), 	 
                                      child: const Text('Back'), 	 
                                    ), 	 
                                    TextButton( 	  
                                      onPressed: () { 
                                        String valParam = ""; 
                                        if (oh.id is String ) { 
                                          valParam = "'"+oh.id.toString()+"'"; 
                                        } else { 
                                          valParam = oh.id.toString(); 
                                        } 
                                      Navigator.of(context).push(MaterialPageRoute( 	  
                                            builder: (context) =>   
                                            AmTasktemplatesDataTable(viewType: dispType, pageNo: 0, searchClause: " id = "+valParam+" ",),  
                                            ), 
                                          ); 
                                      }, 
                                      child: const Text('Go'), 
                                    ), 	  
                                  ], 	 
                                ), 	 
                              ), 	 
                            icon: const Icon( 	 
                              Icons.link_outlined, 	 
                              color: Colors.blueGrey, 	 
                            )), 
                            IconButton( 	 
                              onPressed: () { 	 
                                Navigator.of(context).push(MaterialPageRoute( 	 
                                  builder: (context) => AmTasktemplatesEdit( 	 
                      				idSelected: oh.id, 	
                                  ), 	 
                                )); 	 
                              }, 	 
                              icon: const Icon( 	 
                                Icons.edit, 	 
                                color: Colors.blueGrey, 	 
                            )), 	 
                            IconButton( 	 
                              onPressed: () { 	 
                                Navigator.of(context).push(MaterialPageRoute( 	 
                                  builder: (context) =>  
                                  const AmTasktemplatesForm(), 	 
                                  ), 	 
                                ); 	 
                              }, 	 
                              icon: const Icon( 	 
                                Icons.add_circle_outline, 	 
                                color: Colors.blueGrey, 	 
                            )), 	 
                IconButton( 	 
                onPressed: () => showDialog<String>( 	 
                      context: context, 	 
                      builder: (BuildContext context) => AlertDialog( 	 
                                  insetPadding: EdgeInsets.zero,	 
                        title: Text('Do you want to delete this record ?', 	 
                            style: TextStyle( 	 
                                color: Colors.red.shade400, 	 
                                //fontSize: 22, 	 
                                //fontWeight: FontWeight.w400 	 
                                )), 	 
                        content: _AmTasktemplatesInfo(foundAmTasktemplates: oh), 	 
                        actions: <Widget>[ 	 
                          TextButton( 	 
                            onPressed: () => Navigator.pop(context, 'Cancel'), 	 
                            child: const Text('Cancel'), 	 
                          ), 	 
                          TextButton( 	 
                            onPressed: () async { 	 
                              //Navigator.pop(context, 'Delete'); 	 
                              String apiMessage = ""; 	 
                              // Begin Service Call 	 
                              await AmTasktemplatesService.AmTasktemplatesDelete( 	 
                                      oh.id) 	 
                                  .then((message) { 	 
                                    apiMessage = message;	 
                                    message == "Record Deleted Successfully"	 
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
                                    //style: 	 
                                      //  Theme.of(context).textTheme.headline5, 	 
                                  ), 	 
                                  backgroundColor: 	 
                                      message == "Record Deleted Successfully" 	 
                                          ? Colors.green 	 
                                          : Colors.redAccent, 	 
                                ); 	 
                                ScaffoldMessenger.of(context) 	 
                                    .showSnackBar(snackBar); 	 
   
                              }); 	 
                              // End Service Call 	 
   
                          // ===== Begin: Routing To ListView To Display Data 
                          // ===== Clear Routes As Back buttons leading to previous screens showing old data state are avoided 
                          /* */
                            apiMessage == "Record Deleted Successfully" 	 
                            ?  
                            Navigator.pushAndRemoveUntil(  
                              context,  
                              MaterialPageRoute(   
                                      builder: (context) =>  const AmTasktemplatesDataTable(viewType: "ListView"),   
                                    ),  
                              (Route<dynamic> route) => route.isFirst  
                              ) 
                              : null;  
                          /* */ 
                          // ===== End: Routing To ListView To Display Data 
 
                          // ===== Begin: More Routing Options 
                            /* 	 
                            int popCount = 0; 
                            apiMessage == "Record Deleted Successfully" 	 
                            ?  
                                //Exit 2 levels as data table view not refreshed 
                               // Navigator.of(context).popUntil((_) => popCount++ >= 2) 
                                Navigator.of(context).pop()  
                            : null; 
   						 */			
                          // ===== End: More Routing Options 
   
                            }, 	 
                            child: Text('Delete', 	 
                                style: TextStyle(color: Colors.red.shade400)), 	 
                          ), 	 
                        ], 	 
                      ), 	 
                    ), 	 
                icon: Icon( 	 
                  Icons.delete, 	 
                  color: Colors.red.shade400, 	 
                )), 	 
   
                      ], 
                    ); 	 
                  }), 
                ], 	 
              )) 
              );  
   
      } 
   
    dataCells.add(  
                  DataCell(Text(getEmStrOpt(oh.toListLabVal()[i][1].toString()))),  
              );  
    }  
    return  
              DataRow(  
                cells: dataCells 
              ); 
} 
 
 
/* 
  SingleChildScrollView getListView() { 
    return SingleChildScrollView( 
      child: Padding( 
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10), 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [ 
            Container( 
              height: MediaQuery.of(context).size.height, 
              width: MediaQuery.of(context).size.width * 0.90, 
              padding: const EdgeInsets.only(top: 8.0), 
              decoration: const BoxDecoration(boxShadow: [ 
                BoxShadow( 
                  color: Colors.white, 
                ), 
              ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
              child: ListView(children: [ 
                _buildListView(), 
              ]), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
 
  DataTable _buildListView() { 
    return DataTable( 
      columns: <DataColumn>[ 
        DataColumn(label: Text(amTasktemplatesList[0].toListLabVal()[0][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
        DataColumn(label: Text(amTasktemplatesList[0].toListLabVal()[1][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
      ], 
      rows: amTasktemplatesList 
          .map((e) => DataRow( 
                cells: [ 
                  DataCell(Text(getEmStrOpt(e.toListLabVal()[0][1].toString()))), 
                  DataCell(Text(getEmStrOpt(e.toListLabVal()[1][1].toString()))), 
                ], 
              )) 
          .toList(), 
    ); 
  } 
 
*/ 
 
// --------------- DataTable Functions ------------------- 
  void doColumnSort(int columnIndex, bool ascending) { 
	if (columnIndex == 0) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.id, item2.id)); 
	} else if (columnIndex == 1) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.name, item2.name)); 
	} else if (columnIndex == 2) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.dateEntered, item2.dateEntered)); 
	} else if (columnIndex == 3) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.dateModified, item2.dateModified)); 
	} else if (columnIndex == 4) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.modifiedUserId, item2.modifiedUserId)); 
	} else if (columnIndex == 5) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.createdBy, item2.createdBy)); 
	} else if (columnIndex == 6) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.description, item2.description)); 
	} else if (columnIndex == 7) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.deleted, item2.deleted)); 
	} else if (columnIndex == 8) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.assignedUserId, item2.assignedUserId)); 
	} else if (columnIndex == 9) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.status, item2.status)); 
	} else if (columnIndex == 10) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.priority, item2.priority)); 
	} else if (columnIndex == 11) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.percentComplete, item2.percentComplete)); 
	} else if (columnIndex == 12) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.predecessors, item2.predecessors)); 
	} else if (columnIndex == 13) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.milestoneFlag, item2.milestoneFlag)); 
	} else if (columnIndex == 14) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.relationshipType, item2.relationshipType)); 
	} else if (columnIndex == 15) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.taskNumber, item2.taskNumber)); 
	} else if (columnIndex == 16) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.orderNumber, item2.orderNumber)); 
	} else if (columnIndex == 17) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.estimatedEffort, item2.estimatedEffort)); 
	} else if (columnIndex == 18) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.utilization, item2.utilization)); 
	} else if (columnIndex == 19) { 
	  amTasktemplatesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.duration, item2.duration)); 
    } 
 
    setState(() { 
      sortColumnIndex = columnIndex; 
      isAscending = ascending; 
    }); 
  } 
 
  int compareColumn(bool ascending, dynamic value1, dynamic value2) => 
      ascending ? value1.compareTo(value2) : value2.compareTo(value1); 
 
 
 
  Widget pageTab(BuildContext context) { 
                          int nextPage = currPageNo + 1; 
                          int prevPage = currPageNo - 1; 
    return  
              Padding( 
                padding: const EdgeInsets.fromLTRB(0,6.0,0,0), 
                child: Container( 
                  width: MediaQuery.of(context).size.width * 0.90,   
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(10), 
                    color: Colors.white, 
                  ), 
                  child:  
                  (currPageNo == -1) ? const SizedBox(height: 44,) 
                  : 
                  Column( 
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [ 
                      Row( 
                        mainAxisAlignment: MainAxisAlignment. center, 
                        children: [ 
                          prevPage >= 0 ? 
                          ElevatedButton.icon( 
                            onPressed: () { 
                              goPage(prevPage);  
                            }, 
                          icon: const Icon( 
                            Icons.skip_previous_outlined, 
                            //color: Colors.white, 
                          ), 
                          label: const Text("Prev"), 
                          ) 
                          : const SizedBox.shrink(), 
                        TextButton.icon( 
                          icon: const Icon( 
                            Icons.list_alt_outlined, 
                            //color: Colors.white, 
                          ), 
                              label: Text("Page "+nextPage.toString()), // Your text here 
                              onPressed: (){}, 
                          ), 
                          Directionality( 
                            textDirection: TextDirection.rtl, 
                            child: ElevatedButton.icon( 
                              onPressed: () { 
                                goPage(nextPage);  
                              }, 
                            label: const Text("Next"), 
                            icon: const Icon( 
                              Icons.skip_next_outlined, 
                              //color: Colors.white, 
                            ), 
                            ), 
                          ), 
                        ], 
                      ), 
                    ], 
                  ), 
                ), 
              ); 
 
  } 
 
void goPage(int pageNoNext) { 
 
                          //Page Next Prev Buttons : Handle If Search by Columns also using 
                          //if(widget.srhByColStr != null) { 
                          //} else if(widget.srhByColNum != null) { 
                          //} else { 
 
                            if (emNextPrevPageClearRoutes) { 
 
                            Navigator.pushAndRemoveUntil( 
                              context, 
                              MaterialPageRoute(  
                                      builder: (context) =>  AmTasktemplatesDataTable(viewType: dispType, pageNo: pageNoNext, searchClause: searchFilter, sortClause: sortBy,), 
                                    ), 
                              (Route<dynamic> route) => route.isFirst 
                              ); 
 
                            } else { 
 
                            Navigator.of(context).push(MaterialPageRoute(  
                                      builder: (context) =>  AmTasktemplatesDataTable(viewType: dispType, pageNo: pageNoNext, searchClause: searchFilter, sortClause: sortBy,), 
                            ));  
 
                            } 
                          //} 
} 
 
 
} 
 
class AmTasktemplatesDataSource extends DataTableSource { 
  // Generate some made-up data 
  @required 
  late List<AmTasktemplates> _data; 
 
  AmTasktemplatesDataSource(List<AmTasktemplates> amTasktemplatesList) { 
    _data = amTasktemplatesList; 
  } 
 
  @override 
  bool get isRowCountApproximate => false; 
  @override 
  int get rowCount => _data.length; 
  @override 
  int get selectedRowCount => 0; 
  @override 
  DataRow getRow(int index) { 
    return DataRow(cells: [ 
	DataCell(Text(getEmStrOpt(_data[index].id))), 
	DataCell(Text(getEmStrOpt(_data[index].name))), 
	DataCell(Text(getEmStrOpt(_data[index].dateEntered))), 
	DataCell(Text(getEmStrOpt(_data[index].dateModified))), 
	DataCell(Text(getEmStrOpt(_data[index].modifiedUserId))), 
	DataCell(Text(getEmStrOpt(_data[index].createdBy))), 
	DataCell(Text(getEmStrOpt(_data[index].description))), 
	DataCell(Text(getEmStrOpt(_data[index].deleted))), 
	DataCell(Text(getEmStrOpt(_data[index].assignedUserId))), 
	DataCell(Text(getEmStrOpt(_data[index].status))), 
	DataCell(Text(getEmStrOpt(_data[index].priority))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].percentComplete)))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].predecessors)))), 
	DataCell(Text(getEmStrOpt(_data[index].milestoneFlag))), 
	DataCell(Text(getEmStrOpt(_data[index].relationshipType))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].taskNumber)))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].orderNumber)))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].estimatedEffort)))), 
	DataCell(Text(getEmStrOpt(_data[index].utilization))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].duration)))), 
      DataCell(Row( 	
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 	
        children: [ 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () { 	
                  Navigator.of(context).push(MaterialPageRoute( 	
                    builder: (context) => AmTasktemplatesEdit( 	
                      idSelected: _data[index].id, 	
                    ), 	
                  )); 	
                }, 	
                icon: const Icon( 	
                  Icons.edit, 	
                  color: Colors.blueGrey, 	
                )); 	
          }), 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () => showDialog<String>( 	
                      context: context, 	
                      builder: (BuildContext context) => AlertDialog( 	
						 insetPadding: EdgeInsets.zero,	 	
                        title: Text('Do you want to delete this record ?', 	
                            style: TextStyle( 	
                                color: Colors.red.shade400, 	
                                //fontSize: 22, 	
                                //fontWeight: FontWeight.w400 	
                                )), 	
                        content: _AmTasktemplatesInfo(foundAmTasktemplates: _data[index]), 	
                        actions: <Widget>[ 	
                          TextButton( 	
                            onPressed: () => Navigator.pop(context, 'Cancel'), 	
                            child: const Text('Cancel'), 	
                          ), 	
                          TextButton( 	
                            onPressed: () async { 	
                              //Navigator.pop(context, 'Delete'); 	
                              String apiMessage = ""; 	
                              //Begin Service Call 	
                              await AmTasktemplatesService.AmTasktemplatesDelete( 	
                                      _data[index].id) 	
                                  .then((message) { 	
                                    apiMessage = message;	
                                    message == "Record Deleted Successfully"	
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
                                    //style: 	
                                        //Theme.of(context).textTheme.headline5, 	
                                  ), 	
                                  backgroundColor: 	
                                      message == "Record Deleted Successfully" 	
                                          ? Colors.green 	
                                          : Colors.redAccent, 	
                                ); 	
                                ScaffoldMessenger.of(context) 	
                                    .showSnackBar(snackBar); 	
                              }); 	
                              //End Service Call 	
     
                              apiMessage == "Record Deleted Successfully" 	
                              ?  	
                              //Navigator.of(context).pop()  //this Leaves previous display, deleted record not cleared	
                              Navigator.pushAndRemoveUntil(  
                              context,  
                              MaterialPageRoute(   
                                      builder: (context) =>  const AmTasktemplatesDataTable(), //default: Disp type PaginatedDataTable   
                                    ),  
                              (Route<dynamic> route) => route.isFirst  
                              ) 
                              : null; 	
     
                            }, 	
                            child: Text('Delete', 	
                                style: TextStyle(color: Colors.red.shade400)), 	
                          ), 	
                        ], 	
                      ), 	
                    ), 	
                icon: Icon( 	
                  Icons.delete, 	
                  color: Colors.red.shade400, 	
                )); 	
          }), 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () => showDialog<String>( 	
                      context: context, 	
                      builder: (BuildContext context) => AlertDialog( 	
						 insetPadding: EdgeInsets.zero,	 	
                        title: Text("AmTasktemplates Details", 	
                            style: TextStyle( 	
                                color: Colors.red.shade400, 	
                                //fontSize: 22, 	
                                //fontWeight: FontWeight.w400 	
                                )), 	
                        content: _AmTasktemplatesInfo(foundAmTasktemplates: _data[index]), 	
                        actions: <Widget>[ 	
                          TextButton( 	
                            onPressed: () => Navigator.pop(context), 	
                            child: const Text('Done'), 	
                          ), 	
                        ], 	
                      ), 	
                    ), 	
                icon: Icon( 	
                  Icons.preview_outlined, 	
                  color: Colors.blueGrey, 	
                )); 	
          }), 	
        ], 	
      )), 	
    ]); 
  } 
} 
// --------------- DataTable Functions -------------------	
	 		
// --------------- DataTable Delete Call Functions - View Record -------------------	
	 	
	class _AmTasktemplatesInfo extends StatelessWidget { 	
	  final AmTasktemplates foundAmTasktemplates; 	
	  const _AmTasktemplatesInfo({Key? key, required this.foundAmTasktemplates}) 	
	      : super(key: key); 	
	 	
	  @override 	
	  Widget build(BuildContext context) { 	
			return AmTasktemplates_dispForm(context, foundAmTasktemplates); 	
	  } 	
	} 	
 
