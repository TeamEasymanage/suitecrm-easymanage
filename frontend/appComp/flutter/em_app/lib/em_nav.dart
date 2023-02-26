import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart'; 
 
import 'package:em_app/em_lib/em_si_su/signin_page.dart'; 
import 'package:em_app/em_lib/em_si_su/signout_page.dart'; 
import 'package:em_app/em_lib/em_si_su/signup_page.dart'; 
import 'package:em_app/em_notifications.dart'; 
import 'package:em_app/main.dart'; 
 
import 'package:em_app/pages/accounts/accounts_data_table.dart'; 
import 'package:em_app/pages/accounts/accounts_form.dart'; 
import 'package:em_app/pages/accounts/accounts_filter.dart'; 
import 'package:em_app/pages/accounts/accounts_dropdown.dart'; 
import 'package:em_app/pages/accounts/accounts_search.dart'; 
import 'package:em_app/pages/accounts/accounts_edit.dart'; 
import 'package:em_app/pages/accounts/accounts_graph.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_data_table.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_form.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_filter.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_dropdown.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_search.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_edit.dart'; 
import 'package:em_app/pages/accountsaudit/accountsaudit_graph.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_data_table.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_form.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_filter.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_dropdown.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_search.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_edit.dart'; 
import 'package:em_app/pages/accountsbugs/accountsbugs_graph.dart'; 
import 'package:em_app/pages/accountscases/accountscases_data_table.dart'; 
import 'package:em_app/pages/accountscases/accountscases_form.dart'; 
import 'package:em_app/pages/accountscases/accountscases_filter.dart'; 
import 'package:em_app/pages/accountscases/accountscases_dropdown.dart'; 
import 'package:em_app/pages/accountscases/accountscases_search.dart'; 
import 'package:em_app/pages/accountscases/accountscases_edit.dart'; 
import 'package:em_app/pages/accountscases/accountscases_graph.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_data_table.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_form.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_filter.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_dropdown.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_search.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_edit.dart'; 
import 'package:em_app/pages/accountscontacts/accountscontacts_graph.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_data_table.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_form.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_filter.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_dropdown.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_search.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_edit.dart'; 
import 'package:em_app/pages/accountscstm/accountscstm_graph.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_data_table.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_form.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_filter.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_dropdown.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_search.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_edit.dart'; 
import 'package:em_app/pages/accountsopportunities/accountsopportunities_graph.dart'; 
import 'package:em_app/pages/aclactions/aclactions_data_table.dart'; 
import 'package:em_app/pages/aclactions/aclactions_form.dart'; 
import 'package:em_app/pages/aclactions/aclactions_filter.dart'; 
import 'package:em_app/pages/aclactions/aclactions_dropdown.dart'; 
import 'package:em_app/pages/aclactions/aclactions_search.dart'; 
import 'package:em_app/pages/aclactions/aclactions_edit.dart'; 
import 'package:em_app/pages/aclactions/aclactions_graph.dart'; 
import 'package:em_app/pages/aclroles/aclroles_data_table.dart'; 
import 'package:em_app/pages/aclroles/aclroles_form.dart'; 
import 'package:em_app/pages/aclroles/aclroles_filter.dart'; 
import 'package:em_app/pages/aclroles/aclroles_dropdown.dart'; 
import 'package:em_app/pages/aclroles/aclroles_search.dart'; 
import 'package:em_app/pages/aclroles/aclroles_edit.dart'; 
import 'package:em_app/pages/aclroles/aclroles_graph.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_data_table.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_form.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_filter.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_dropdown.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_search.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_edit.dart'; 
import 'package:em_app/pages/aclrolesactions/aclrolesactions_graph.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_data_table.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_form.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_filter.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_dropdown.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_search.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_edit.dart'; 
import 'package:em_app/pages/aclrolesusers/aclrolesusers_graph.dart'; 
import 'package:em_app/pages/addressbook/addressbook_data_table.dart'; 
import 'package:em_app/pages/addressbook/addressbook_form.dart'; 
import 'package:em_app/pages/addressbook/addressbook_filter.dart'; 
import 'package:em_app/pages/addressbook/addressbook_dropdown.dart'; 
import 'package:em_app/pages/addressbook/addressbook_search.dart'; 
import 'package:em_app/pages/addressbook/addressbook_edit.dart'; 
import 'package:em_app/pages/addressbook/addressbook_graph.dart'; 
import 'package:em_app/pages/alerts/alerts_data_table.dart'; 
import 'package:em_app/pages/alerts/alerts_form.dart'; 
import 'package:em_app/pages/alerts/alerts_filter.dart'; 
import 'package:em_app/pages/alerts/alerts_dropdown.dart'; 
import 'package:em_app/pages/alerts/alerts_search.dart'; 
import 'package:em_app/pages/alerts/alerts_edit.dart'; 
import 'package:em_app/pages/alerts/alerts_graph.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_data_table.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_form.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_filter.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_dropdown.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_search.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_edit.dart'; 
import 'package:em_app/pages/amprojecttemplates/amprojecttemplates_graph.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_data_table.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_form.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_filter.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_dropdown.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_search.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_edit.dart'; 
import 'package:em_app/pages/amprojecttemplatesaudit/amprojecttemplatesaudit_graph.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_data_table.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_form.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_filter.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_dropdown.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_search.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_edit.dart'; 
import 'package:em_app/pages/amprojecttemplatescontacts1c/amprojecttemplatescontacts1c_graph.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_data_table.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_form.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_filter.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_dropdown.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_search.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_edit.dart'; 
import 'package:em_app/pages/amprojecttemplatesproject1c/amprojecttemplatesproject1c_graph.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_data_table.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_form.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_filter.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_dropdown.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_search.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_edit.dart'; 
import 'package:em_app/pages/amprojecttemplatesusers1c/amprojecttemplatesusers1c_graph.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_data_table.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_form.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_filter.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_dropdown.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_search.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_edit.dart'; 
import 'package:em_app/pages/amtasktemplates/amtasktemplates_graph.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_data_table.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_form.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_filter.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_dropdown.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_search.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_edit.dart'; 
import 'package:em_app/pages/amtasktemplatesamprojecttemplatesc/amtasktemplatesamprojecttemplatesc_graph.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_data_table.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_form.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_filter.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_dropdown.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_search.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_edit.dart'; 
import 'package:em_app/pages/amtasktemplatesaudit/amtasktemplatesaudit_graph.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_data_table.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_form.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_filter.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_dropdown.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_search.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_edit.dart'; 
import 'package:em_app/pages/aobhbusinesshours/aobhbusinesshours_graph.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_data_table.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_form.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_filter.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_dropdown.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_search.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_edit.dart'; 
import 'package:em_app/pages/aokknowledgebasecategoriesaudit/aokknowledgebasecategoriesaudit_graph.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_data_table.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_form.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_filter.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_dropdown.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_search.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_edit.dart'; 
import 'package:em_app/pages/aokknowledgebase/aokknowledgebase_graph.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_data_table.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_form.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_filter.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_dropdown.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_search.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_edit.dart'; 
import 'package:em_app/pages/aokknowledgebaseaudit/aokknowledgebaseaudit_graph.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_data_table.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_form.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_filter.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_dropdown.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_search.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_edit.dart'; 
import 'package:em_app/pages/aopcaseevents/aopcaseevents_graph.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_data_table.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_form.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_filter.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_dropdown.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_search.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_edit.dart'; 
import 'package:em_app/pages/aopcaseeventsaudit/aopcaseeventsaudit_graph.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_data_table.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_form.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_filter.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_dropdown.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_search.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_edit.dart'; 
import 'package:em_app/pages/aopcaseupdates/aopcaseupdates_graph.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_data_table.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_form.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_filter.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_dropdown.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_search.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_edit.dart'; 
import 'package:em_app/pages/aopcaseupdatesaudit/aopcaseupdatesaudit_graph.dart'; 
/*
import 'package:em_app/pages/aorcharts/aorcharts_data_table.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_form.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_filter.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_dropdown.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_search.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_edit.dart'; 
import 'package:em_app/pages/aorcharts/aorcharts_graph.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_data_table.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_form.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_filter.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_dropdown.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_search.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_edit.dart'; 
import 'package:em_app/pages/aorconditions/aorconditions_graph.dart'; 
import 'package:em_app/pages/aorfields/aorfields_data_table.dart'; 
import 'package:em_app/pages/aorfields/aorfields_form.dart'; 
import 'package:em_app/pages/aorfields/aorfields_filter.dart'; 
import 'package:em_app/pages/aorfields/aorfields_dropdown.dart'; 
import 'package:em_app/pages/aorfields/aorfields_search.dart'; 
import 'package:em_app/pages/aorfields/aorfields_edit.dart'; 
import 'package:em_app/pages/aorfields/aorfields_graph.dart'; 
import 'package:em_app/pages/aorreports/aorreports_data_table.dart'; 
import 'package:em_app/pages/aorreports/aorreports_form.dart'; 
import 'package:em_app/pages/aorreports/aorreports_filter.dart'; 
import 'package:em_app/pages/aorreports/aorreports_dropdown.dart'; 
import 'package:em_app/pages/aorreports/aorreports_search.dart'; 
import 'package:em_app/pages/aorreports/aorreports_edit.dart'; 
import 'package:em_app/pages/aorreports/aorreports_graph.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_data_table.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_form.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_filter.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_dropdown.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_search.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_edit.dart'; 
import 'package:em_app/pages/aorreportsaudit/aorreportsaudit_graph.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_data_table.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_form.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_filter.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_dropdown.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_search.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_edit.dart'; 
import 'package:em_app/pages/aorscheduledreports/aorscheduledreports_graph.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_data_table.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_form.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_filter.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_dropdown.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_search.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_edit.dart'; 
import 'package:em_app/pages/aoscontracts/aoscontracts_graph.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_data_table.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_form.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_filter.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_dropdown.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_search.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_edit.dart'; 
import 'package:em_app/pages/aoscontractsaudit/aoscontractsaudit_graph.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_data_table.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_form.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_filter.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_dropdown.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_search.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_edit.dart'; 
import 'package:em_app/pages/aoscontractsdocuments/aoscontractsdocuments_graph.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_data_table.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_form.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_filter.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_dropdown.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_search.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_edit.dart'; 
import 'package:em_app/pages/aosinvoices/aosinvoices_graph.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_data_table.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_form.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_filter.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_dropdown.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_search.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_edit.dart'; 
import 'package:em_app/pages/aosinvoicesaudit/aosinvoicesaudit_graph.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_data_table.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_form.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_filter.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_dropdown.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_search.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_edit.dart'; 
import 'package:em_app/pages/aoslineitemgroups/aoslineitemgroups_graph.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_data_table.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_form.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_filter.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_dropdown.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_search.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_edit.dart'; 
import 'package:em_app/pages/aoslineitemgroupsaudit/aoslineitemgroupsaudit_graph.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_data_table.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_form.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_filter.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_dropdown.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_search.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_edit.dart'; 
import 'package:em_app/pages/aospdftemplates/aospdftemplates_graph.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_data_table.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_form.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_filter.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_dropdown.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_search.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_edit.dart'; 
import 'package:em_app/pages/aospdftemplatesaudit/aospdftemplatesaudit_graph.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_data_table.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_form.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_filter.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_dropdown.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_search.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_edit.dart'; 
import 'package:em_app/pages/aosproductcategories/aosproductcategories_graph.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_data_table.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_form.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_filter.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_dropdown.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_search.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_edit.dart'; 
import 'package:em_app/pages/aosproductcategoriesaudit/aosproductcategoriesaudit_graph.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_data_table.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_form.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_filter.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_dropdown.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_search.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_edit.dart'; 
import 'package:em_app/pages/aosproducts/aosproducts_graph.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_data_table.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_form.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_filter.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_dropdown.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_search.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_edit.dart'; 
import 'package:em_app/pages/aosproductsaudit/aosproductsaudit_graph.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_data_table.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_form.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_filter.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_dropdown.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_search.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_edit.dart'; 
import 'package:em_app/pages/aosproductsquotes/aosproductsquotes_graph.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_data_table.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_form.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_filter.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_dropdown.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_search.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_edit.dart'; 
import 'package:em_app/pages/aosproductsquotesaudit/aosproductsquotesaudit_graph.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_data_table.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_form.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_filter.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_dropdown.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_search.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_edit.dart'; 
import 'package:em_app/pages/aosquotes/aosquotes_graph.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_data_table.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_form.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_filter.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_dropdown.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_search.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_edit.dart'; 
import 'package:em_app/pages/aosquotesaosinvoicesc/aosquotesaosinvoicesc_graph.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_data_table.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_form.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_filter.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_dropdown.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_search.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_edit.dart'; 
import 'package:em_app/pages/aosquotesaudit/aosquotesaudit_graph.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_data_table.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_form.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_filter.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_dropdown.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_search.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_edit.dart'; 
import 'package:em_app/pages/aosquotesoscontractsc/aosquotesoscontractsc_graph.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_data_table.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_form.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_filter.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_dropdown.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_search.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_edit.dart'; 
import 'package:em_app/pages/aosquotesprojectc/aosquotesprojectc_graph.dart'; 
import 'package:em_app/pages/aowactions/aowactions_data_table.dart'; 
import 'package:em_app/pages/aowactions/aowactions_form.dart'; 
import 'package:em_app/pages/aowactions/aowactions_filter.dart'; 
import 'package:em_app/pages/aowactions/aowactions_dropdown.dart'; 
import 'package:em_app/pages/aowactions/aowactions_search.dart'; 
import 'package:em_app/pages/aowactions/aowactions_edit.dart'; 
import 'package:em_app/pages/aowactions/aowactions_graph.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_data_table.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_form.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_filter.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_dropdown.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_search.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_edit.dart'; 
import 'package:em_app/pages/aowconditions/aowconditions_graph.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_data_table.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_form.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_filter.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_dropdown.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_search.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_edit.dart'; 
import 'package:em_app/pages/aowprocessed/aowprocessed_graph.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_data_table.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_form.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_filter.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_dropdown.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_search.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_edit.dart'; 
import 'package:em_app/pages/aowprocessedaowactions/aowprocessedaowactions_graph.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_data_table.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_form.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_filter.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_dropdown.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_search.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_edit.dart'; 
import 'package:em_app/pages/aowworkflow/aowworkflow_graph.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_data_table.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_form.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_filter.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_dropdown.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_search.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_edit.dart'; 
import 'package:em_app/pages/aowworkflowaudit/aowworkflowaudit_graph.dart'; 
import 'package:em_app/pages/bugs/bugs_data_table.dart'; 
import 'package:em_app/pages/bugs/bugs_form.dart'; 
import 'package:em_app/pages/bugs/bugs_filter.dart'; 
import 'package:em_app/pages/bugs/bugs_dropdown.dart'; 
import 'package:em_app/pages/bugs/bugs_search.dart'; 
import 'package:em_app/pages/bugs/bugs_edit.dart'; 
import 'package:em_app/pages/bugs/bugs_graph.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_data_table.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_form.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_filter.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_dropdown.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_search.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_edit.dart'; 
import 'package:em_app/pages/bugsaudit/bugsaudit_graph.dart'; 
import 'package:em_app/pages/calls/calls_data_table.dart'; 
import 'package:em_app/pages/calls/calls_form.dart'; 
import 'package:em_app/pages/calls/calls_filter.dart'; 
import 'package:em_app/pages/calls/calls_dropdown.dart'; 
import 'package:em_app/pages/calls/calls_search.dart'; 
import 'package:em_app/pages/calls/calls_edit.dart'; 
import 'package:em_app/pages/calls/calls_graph.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_data_table.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_form.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_filter.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_dropdown.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_search.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_edit.dart'; 
import 'package:em_app/pages/callscontacts/callscontacts_graph.dart'; 
import 'package:em_app/pages/callsleads/callsleads_data_table.dart'; 
import 'package:em_app/pages/callsleads/callsleads_form.dart'; 
import 'package:em_app/pages/callsleads/callsleads_filter.dart'; 
import 'package:em_app/pages/callsleads/callsleads_dropdown.dart'; 
import 'package:em_app/pages/callsleads/callsleads_search.dart'; 
import 'package:em_app/pages/callsleads/callsleads_edit.dart'; 
import 'package:em_app/pages/callsleads/callsleads_graph.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_data_table.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_form.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_filter.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_dropdown.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_search.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_edit.dart'; 
import 'package:em_app/pages/callsreschedule/callsreschedule_graph.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_data_table.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_form.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_filter.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_dropdown.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_search.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_edit.dart'; 
import 'package:em_app/pages/callsrescheduleaudit/callsrescheduleaudit_graph.dart'; 
import 'package:em_app/pages/callsusers/callsusers_data_table.dart'; 
import 'package:em_app/pages/callsusers/callsusers_form.dart'; 
import 'package:em_app/pages/callsusers/callsusers_filter.dart'; 
import 'package:em_app/pages/callsusers/callsusers_dropdown.dart'; 
import 'package:em_app/pages/callsusers/callsusers_search.dart'; 
import 'package:em_app/pages/callsusers/callsusers_edit.dart'; 
import 'package:em_app/pages/callsusers/callsusers_graph.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_data_table.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_form.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_filter.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_dropdown.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_search.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_edit.dart'; 
import 'package:em_app/pages/campaignlog/campaignlog_graph.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_data_table.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_form.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_filter.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_dropdown.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_search.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_edit.dart'; 
import 'package:em_app/pages/campaigntrkrs/campaigntrkrs_graph.dart'; 
import 'package:em_app/pages/campaigns/campaigns_data_table.dart'; 
import 'package:em_app/pages/campaigns/campaigns_form.dart'; 
import 'package:em_app/pages/campaigns/campaigns_filter.dart'; 
import 'package:em_app/pages/campaigns/campaigns_dropdown.dart'; 
import 'package:em_app/pages/campaigns/campaigns_search.dart'; 
import 'package:em_app/pages/campaigns/campaigns_edit.dart'; 
import 'package:em_app/pages/campaigns/campaigns_graph.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_data_table.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_form.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_filter.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_dropdown.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_search.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_edit.dart'; 
import 'package:em_app/pages/campaignsaudit/campaignsaudit_graph.dart'; 
import 'package:em_app/pages/cases/cases_data_table.dart'; 
import 'package:em_app/pages/cases/cases_form.dart'; 
import 'package:em_app/pages/cases/cases_filter.dart'; 
import 'package:em_app/pages/cases/cases_dropdown.dart'; 
import 'package:em_app/pages/cases/cases_search.dart'; 
import 'package:em_app/pages/cases/cases_edit.dart'; 
import 'package:em_app/pages/cases/cases_graph.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_data_table.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_form.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_filter.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_dropdown.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_search.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_edit.dart'; 
import 'package:em_app/pages/casesaudit/casesaudit_graph.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_data_table.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_form.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_filter.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_dropdown.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_search.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_edit.dart'; 
import 'package:em_app/pages/casesbugs/casesbugs_graph.dart'; 
import 'package:em_app/pages/casescstm/casescstm_data_table.dart'; 
import 'package:em_app/pages/casescstm/casescstm_form.dart'; 
import 'package:em_app/pages/casescstm/casescstm_filter.dart'; 
import 'package:em_app/pages/casescstm/casescstm_dropdown.dart'; 
import 'package:em_app/pages/casescstm/casescstm_search.dart'; 
import 'package:em_app/pages/casescstm/casescstm_edit.dart'; 
import 'package:em_app/pages/casescstm/casescstm_graph.dart'; 
import 'package:em_app/pages/config/config_data_table.dart'; 
import 'package:em_app/pages/config/config_form.dart'; 
import 'package:em_app/pages/config/config_filter.dart'; 
import 'package:em_app/pages/config/config_dropdown.dart'; 
import 'package:em_app/pages/config/config_search.dart'; 
import 'package:em_app/pages/config/config_edit.dart'; 
import 'package:em_app/pages/config/config_graph.dart'; 
import 'package:em_app/pages/contacts/contacts_data_table.dart'; 
import 'package:em_app/pages/contacts/contacts_form.dart'; 
import 'package:em_app/pages/contacts/contacts_filter.dart'; 
import 'package:em_app/pages/contacts/contacts_dropdown.dart'; 
import 'package:em_app/pages/contacts/contacts_search.dart'; 
import 'package:em_app/pages/contacts/contacts_edit.dart'; 
import 'package:em_app/pages/contacts/contacts_graph.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_data_table.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_form.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_filter.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_dropdown.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_search.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_edit.dart'; 
import 'package:em_app/pages/contactsaudit/contactsaudit_graph.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_data_table.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_form.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_filter.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_dropdown.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_search.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_edit.dart'; 
import 'package:em_app/pages/contactsbugs/contactsbugs_graph.dart'; 
import 'package:em_app/pages/contactscases/contactscases_data_table.dart'; 
import 'package:em_app/pages/contactscases/contactscases_form.dart'; 
import 'package:em_app/pages/contactscases/contactscases_filter.dart'; 
import 'package:em_app/pages/contactscases/contactscases_dropdown.dart'; 
import 'package:em_app/pages/contactscases/contactscases_search.dart'; 
import 'package:em_app/pages/contactscases/contactscases_edit.dart'; 
import 'package:em_app/pages/contactscases/contactscases_graph.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_data_table.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_form.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_filter.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_dropdown.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_search.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_edit.dart'; 
import 'package:em_app/pages/contactscstm/contactscstm_graph.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_data_table.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_form.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_filter.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_dropdown.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_search.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_edit.dart'; 
import 'package:em_app/pages/contactsusers/contactsusers_graph.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_data_table.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_form.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_filter.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_dropdown.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_search.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_edit.dart'; 
import 'package:em_app/pages/cronremovedocuments/cronremovedocuments_graph.dart'; 
import 'package:em_app/pages/currencies/currencies_data_table.dart'; 
import 'package:em_app/pages/currencies/currencies_form.dart'; 
import 'package:em_app/pages/currencies/currencies_filter.dart'; 
import 'package:em_app/pages/currencies/currencies_dropdown.dart'; 
import 'package:em_app/pages/currencies/currencies_search.dart'; 
import 'package:em_app/pages/currencies/currencies_edit.dart'; 
import 'package:em_app/pages/currencies/currencies_graph.dart'; 
import 'package:em_app/pages/customfields/customfields_data_table.dart'; 
import 'package:em_app/pages/customfields/customfields_form.dart'; 
import 'package:em_app/pages/customfields/customfields_filter.dart'; 
import 'package:em_app/pages/customfields/customfields_dropdown.dart'; 
import 'package:em_app/pages/customfields/customfields_search.dart'; 
import 'package:em_app/pages/customfields/customfields_edit.dart'; 
import 'package:em_app/pages/customfields/customfields_graph.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_data_table.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_form.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_filter.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_dropdown.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_search.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_edit.dart'; 
import 'package:em_app/pages/documentrevisions/documentrevisions_graph.dart'; 
import 'package:em_app/pages/documents/documents_data_table.dart'; 
import 'package:em_app/pages/documents/documents_form.dart'; 
import 'package:em_app/pages/documents/documents_filter.dart'; 
import 'package:em_app/pages/documents/documents_dropdown.dart'; 
import 'package:em_app/pages/documents/documents_search.dart'; 
import 'package:em_app/pages/documents/documents_edit.dart'; 
import 'package:em_app/pages/documents/documents_graph.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_data_table.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_form.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_filter.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_dropdown.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_search.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_edit.dart'; 
import 'package:em_app/pages/documentsaccounts/documentsaccounts_graph.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_data_table.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_form.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_filter.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_dropdown.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_search.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_edit.dart'; 
import 'package:em_app/pages/documentsbugs/documentsbugs_graph.dart'; 
import 'package:em_app/pages/documentscases/documentscases_data_table.dart'; 
import 'package:em_app/pages/documentscases/documentscases_form.dart'; 
import 'package:em_app/pages/documentscases/documentscases_filter.dart'; 
import 'package:em_app/pages/documentscases/documentscases_dropdown.dart'; 
import 'package:em_app/pages/documentscases/documentscases_search.dart'; 
import 'package:em_app/pages/documentscases/documentscases_edit.dart'; 
import 'package:em_app/pages/documentscases/documentscases_graph.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_data_table.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_form.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_filter.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_dropdown.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_search.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_edit.dart'; 
import 'package:em_app/pages/documentscontacts/documentscontacts_graph.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_data_table.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_form.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_filter.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_dropdown.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_search.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_edit.dart'; 
import 'package:em_app/pages/documentsopportunities/documentsopportunities_graph.dart'; 
import 'package:em_app/pages/eapm/eapm_data_table.dart'; 
import 'package:em_app/pages/eapm/eapm_form.dart'; 
import 'package:em_app/pages/eapm/eapm_filter.dart'; 
import 'package:em_app/pages/eapm/eapm_dropdown.dart'; 
import 'package:em_app/pages/eapm/eapm_search.dart'; 
import 'package:em_app/pages/eapm/eapm_edit.dart'; 
import 'package:em_app/pages/eapm/eapm_graph.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_data_table.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_form.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_filter.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_dropdown.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_search.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_edit.dart'; 
import 'package:em_app/pages/emailaddrbeanrel/emailaddrbeanrel_graph.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_data_table.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_form.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_filter.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_dropdown.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_search.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_edit.dart'; 
import 'package:em_app/pages/emailaddresses/emailaddresses_graph.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_data_table.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_form.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_filter.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_dropdown.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_search.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_edit.dart'; 
import 'package:em_app/pages/emailaddressesaudit/emailaddressesaudit_graph.dart'; 
import 'package:em_app/pages/emailcache/emailcache_data_table.dart'; 
import 'package:em_app/pages/emailcache/emailcache_form.dart'; 
import 'package:em_app/pages/emailcache/emailcache_filter.dart'; 
import 'package:em_app/pages/emailcache/emailcache_dropdown.dart'; 
import 'package:em_app/pages/emailcache/emailcache_search.dart'; 
import 'package:em_app/pages/emailcache/emailcache_edit.dart'; 
import 'package:em_app/pages/emailcache/emailcache_graph.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_data_table.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_form.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_filter.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_dropdown.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_search.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_edit.dart'; 
import 'package:em_app/pages/emailmarketing/emailmarketing_graph.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_data_table.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_form.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_filter.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_dropdown.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_search.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_edit.dart'; 
import 'package:em_app/pages/emailmarketingprospectlists/emailmarketingprospectlists_graph.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_data_table.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_form.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_filter.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_dropdown.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_search.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_edit.dart'; 
import 'package:em_app/pages/emailtemplates/emailtemplates_graph.dart'; 
import 'package:em_app/pages/emailman/emailman_data_table.dart'; 
import 'package:em_app/pages/emailman/emailman_form.dart'; 
import 'package:em_app/pages/emailman/emailman_filter.dart'; 
import 'package:em_app/pages/emailman/emailman_dropdown.dart'; 
import 'package:em_app/pages/emailman/emailman_search.dart'; 
import 'package:em_app/pages/emailman/emailman_edit.dart'; 
import 'package:em_app/pages/emailman/emailman_graph.dart'; 
import 'package:em_app/pages/emails/emails_data_table.dart'; 
import 'package:em_app/pages/emails/emails_form.dart'; 
import 'package:em_app/pages/emails/emails_filter.dart'; 
import 'package:em_app/pages/emails/emails_dropdown.dart'; 
import 'package:em_app/pages/emails/emails_search.dart'; 
import 'package:em_app/pages/emails/emails_edit.dart'; 
import 'package:em_app/pages/emails/emails_graph.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_data_table.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_form.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_filter.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_dropdown.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_search.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_edit.dart'; 
import 'package:em_app/pages/emailsbeans/emailsbeans_graph.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_data_table.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_form.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_filter.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_dropdown.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_search.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_edit.dart'; 
import 'package:em_app/pages/emailsemailaddrrel/emailsemailaddrrel_graph.dart'; 
import 'package:em_app/pages/emailstext/emailstext_data_table.dart'; 
import 'package:em_app/pages/emailstext/emailstext_form.dart'; 
import 'package:em_app/pages/emailstext/emailstext_filter.dart'; 
import 'package:em_app/pages/emailstext/emailstext_dropdown.dart'; 
import 'package:em_app/pages/emailstext/emailstext_search.dart'; 
import 'package:em_app/pages/emailstext/emailstext_edit.dart'; 
import 'package:em_app/pages/emailstext/emailstext_graph.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_data_table.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_form.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_filter.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_dropdown.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_search.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_edit.dart'; 
import 'package:em_app/pages/externaloauthconnections/externaloauthconnections_graph.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_data_table.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_form.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_filter.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_dropdown.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_search.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_edit.dart'; 
import 'package:em_app/pages/externaloauthproviders/externaloauthproviders_graph.dart'; 
import 'package:em_app/pages/favorites/favorites_data_table.dart'; 
import 'package:em_app/pages/favorites/favorites_form.dart'; 
import 'package:em_app/pages/favorites/favorites_filter.dart'; 
import 'package:em_app/pages/favorites/favorites_dropdown.dart'; 
import 'package:em_app/pages/favorites/favorites_search.dart'; 
import 'package:em_app/pages/favorites/favorites_edit.dart'; 
import 'package:em_app/pages/favorites/favorites_graph.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_data_table.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_form.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_filter.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_dropdown.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_search.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_edit.dart'; 
import 'package:em_app/pages/fieldsmetadata/fieldsmetadata_graph.dart'; 
import 'package:em_app/pages/folders/folders_data_table.dart'; 
import 'package:em_app/pages/folders/folders_form.dart'; 
import 'package:em_app/pages/folders/folders_filter.dart'; 
import 'package:em_app/pages/folders/folders_dropdown.dart'; 
import 'package:em_app/pages/folders/folders_search.dart'; 
import 'package:em_app/pages/folders/folders_edit.dart'; 
import 'package:em_app/pages/folders/folders_graph.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_data_table.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_form.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_filter.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_dropdown.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_search.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_edit.dart'; 
import 'package:em_app/pages/foldersrel/foldersrel_graph.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_data_table.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_form.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_filter.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_dropdown.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_search.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_edit.dart'; 
import 'package:em_app/pages/folderssubscriptions/folderssubscriptions_graph.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_data_table.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_form.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_filter.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_dropdown.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_search.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_edit.dart'; 
import 'package:em_app/pages/fpeventlocations/fpeventlocations_graph.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_data_table.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_form.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_filter.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_dropdown.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_search.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_edit.dart'; 
import 'package:em_app/pages/fpeventlocationsaudit/fpeventlocationsaudit_graph.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_data_table.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_form.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_filter.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_dropdown.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_search.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_edit.dart'; 
import 'package:em_app/pages/fpeventlocationsfpevents1c/fpeventlocationsfpevents1c_graph.dart'; 
import 'package:em_app/pages/fpevents/fpevents_data_table.dart'; 
import 'package:em_app/pages/fpevents/fpevents_form.dart'; 
import 'package:em_app/pages/fpevents/fpevents_filter.dart'; 
import 'package:em_app/pages/fpevents/fpevents_dropdown.dart'; 
import 'package:em_app/pages/fpevents/fpevents_search.dart'; 
import 'package:em_app/pages/fpevents/fpevents_edit.dart'; 
import 'package:em_app/pages/fpevents/fpevents_graph.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_data_table.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_form.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_filter.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_dropdown.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_search.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_edit.dart'; 
import 'package:em_app/pages/fpeventsaudit/fpeventsaudit_graph.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_data_table.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_form.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_filter.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_dropdown.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_search.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_edit.dart'; 
import 'package:em_app/pages/fpeventscontactsc/fpeventscontactsc_graph.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_data_table.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_form.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_filter.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_dropdown.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_search.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_edit.dart'; 
import 'package:em_app/pages/fpeventsfpeventdelegates1c/fpeventsfpeventdelegates1c_graph.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_data_table.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_form.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_filter.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_dropdown.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_search.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_edit.dart'; 
import 'package:em_app/pages/fpeventsfpeventlocations1c/fpeventsfpeventlocations1c_graph.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_data_table.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_form.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_filter.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_dropdown.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_search.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_edit.dart'; 
import 'package:em_app/pages/fpeventsleads1c/fpeventsleads1c_graph.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_data_table.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_form.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_filter.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_dropdown.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_search.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_edit.dart'; 
import 'package:em_app/pages/fpeventsprospects1c/fpeventsprospects1c_graph.dart'; 
import 'package:em_app/pages/importmaps/importmaps_data_table.dart'; 
import 'package:em_app/pages/importmaps/importmaps_form.dart'; 
import 'package:em_app/pages/importmaps/importmaps_filter.dart'; 
import 'package:em_app/pages/importmaps/importmaps_dropdown.dart'; 
import 'package:em_app/pages/importmaps/importmaps_search.dart'; 
import 'package:em_app/pages/importmaps/importmaps_edit.dart'; 
import 'package:em_app/pages/importmaps/importmaps_graph.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_data_table.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_form.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_filter.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_dropdown.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_search.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_edit.dart'; 
import 'package:em_app/pages/inboundemail/inboundemail_graph.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_data_table.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_form.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_filter.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_dropdown.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_search.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_edit.dart'; 
import 'package:em_app/pages/inboundemailautoreply/inboundemailautoreply_graph.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_data_table.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_form.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_filter.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_dropdown.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_search.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_edit.dart'; 
import 'package:em_app/pages/inboundemailcachets/inboundemailcachets_graph.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_data_table.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_form.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_filter.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_dropdown.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_search.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_edit.dart'; 
import 'package:em_app/pages/jjwgaddresscache/jjwgaddresscache_graph.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_data_table.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_form.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_filter.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_dropdown.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_search.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_edit.dart'; 
import 'package:em_app/pages/jjwgaddresscacheaudit/jjwgaddresscacheaudit_graph.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_data_table.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_form.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_filter.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_dropdown.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_search.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_edit.dart'; 
import 'package:em_app/pages/jjwgareas/jjwgareas_graph.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_data_table.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_form.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_filter.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_dropdown.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_search.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_edit.dart'; 
import 'package:em_app/pages/jjwgareasaudit/jjwgareasaudit_graph.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_data_table.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_form.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_filter.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_dropdown.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_search.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_edit.dart'; 
import 'package:em_app/pages/jjwgmaps/jjwgmaps_graph.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_data_table.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_form.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_filter.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_dropdown.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_search.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_edit.dart'; 
import 'package:em_app/pages/jjwgmapsaudit/jjwgmapsaudit_graph.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_data_table.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_form.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_filter.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_dropdown.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_search.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_edit.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgareasc/jjwgmapsjjwgareasc_graph.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_data_table.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_form.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_filter.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_dropdown.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_search.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_edit.dart'; 
import 'package:em_app/pages/jjwgmapsjjwgmarkersc/jjwgmapsjjwgmarkersc_graph.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_data_table.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_form.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_filter.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_dropdown.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_search.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_edit.dart'; 
import 'package:em_app/pages/jjwgmarkers/jjwgmarkers_graph.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_data_table.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_form.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_filter.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_dropdown.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_search.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_edit.dart'; 
import 'package:em_app/pages/jjwgmarkersaudit/jjwgmarkersaudit_graph.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_data_table.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_form.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_filter.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_dropdown.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_search.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_edit.dart'; 
import 'package:em_app/pages/jobqueue/jobqueue_graph.dart'; 
import 'package:em_app/pages/leads/leads_data_table.dart'; 
import 'package:em_app/pages/leads/leads_form.dart'; 
import 'package:em_app/pages/leads/leads_filter.dart'; 
import 'package:em_app/pages/leads/leads_dropdown.dart'; 
import 'package:em_app/pages/leads/leads_search.dart'; 
import 'package:em_app/pages/leads/leads_edit.dart'; 
import 'package:em_app/pages/leads/leads_graph.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_data_table.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_form.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_filter.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_dropdown.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_search.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_edit.dart'; 
import 'package:em_app/pages/leadsaudit/leadsaudit_graph.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_data_table.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_form.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_filter.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_dropdown.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_search.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_edit.dart'; 
import 'package:em_app/pages/leadscstm/leadscstm_graph.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_data_table.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_form.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_filter.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_dropdown.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_search.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_edit.dart'; 
import 'package:em_app/pages/linkeddocuments/linkeddocuments_graph.dart'; 
import 'package:em_app/pages/meetings/meetings_data_table.dart'; 
import 'package:em_app/pages/meetings/meetings_form.dart'; 
import 'package:em_app/pages/meetings/meetings_filter.dart'; 
import 'package:em_app/pages/meetings/meetings_dropdown.dart'; 
import 'package:em_app/pages/meetings/meetings_search.dart'; 
import 'package:em_app/pages/meetings/meetings_edit.dart'; 
import 'package:em_app/pages/meetings/meetings_graph.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_data_table.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_form.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_filter.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_dropdown.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_search.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_edit.dart'; 
import 'package:em_app/pages/meetingscontacts/meetingscontacts_graph.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_data_table.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_form.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_filter.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_dropdown.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_search.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_edit.dart'; 
import 'package:em_app/pages/meetingscstm/meetingscstm_graph.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_data_table.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_form.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_filter.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_dropdown.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_search.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_edit.dart'; 
import 'package:em_app/pages/meetingsleads/meetingsleads_graph.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_data_table.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_form.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_filter.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_dropdown.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_search.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_edit.dart'; 
import 'package:em_app/pages/meetingsusers/meetingsusers_graph.dart'; 
import 'package:em_app/pages/notes/notes_data_table.dart'; 
import 'package:em_app/pages/notes/notes_form.dart'; 
import 'package:em_app/pages/notes/notes_filter.dart'; 
import 'package:em_app/pages/notes/notes_dropdown.dart'; 
import 'package:em_app/pages/notes/notes_search.dart'; 
import 'package:em_app/pages/notes/notes_edit.dart'; 
import 'package:em_app/pages/notes/notes_graph.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_data_table.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_form.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_filter.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_dropdown.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_search.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_edit.dart'; 
import 'package:em_app/pages/oauth2clients/oauth2clients_graph.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_data_table.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_form.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_filter.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_dropdown.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_search.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_edit.dart'; 
import 'package:em_app/pages/oauth2tokens/oauth2tokens_graph.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_data_table.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_form.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_filter.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_dropdown.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_search.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_edit.dart'; 
import 'package:em_app/pages/oauthconsumer/oauthconsumer_graph.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_data_table.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_form.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_filter.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_dropdown.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_search.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_edit.dart'; 
import 'package:em_app/pages/oauthnonce/oauthnonce_graph.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_data_table.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_form.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_filter.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_dropdown.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_search.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_edit.dart'; 
import 'package:em_app/pages/oauthtokens/oauthtokens_graph.dart'; 
import 'package:em_app/pages/opportunities/opportunities_data_table.dart'; 
import 'package:em_app/pages/opportunities/opportunities_form.dart'; 
import 'package:em_app/pages/opportunities/opportunities_filter.dart'; 
import 'package:em_app/pages/opportunities/opportunities_dropdown.dart'; 
import 'package:em_app/pages/opportunities/opportunities_search.dart'; 
import 'package:em_app/pages/opportunities/opportunities_edit.dart'; 
import 'package:em_app/pages/opportunities/opportunities_graph.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_data_table.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_form.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_filter.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_dropdown.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_search.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_edit.dart'; 
import 'package:em_app/pages/opportunitiesaudit/opportunitiesaudit_graph.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_data_table.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_form.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_filter.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_dropdown.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_search.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_edit.dart'; 
import 'package:em_app/pages/opportunitiescontacts/opportunitiescontacts_graph.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_data_table.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_form.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_filter.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_dropdown.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_search.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_edit.dart'; 
import 'package:em_app/pages/opportunitiescstm/opportunitiescstm_graph.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_data_table.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_form.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_filter.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_dropdown.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_search.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_edit.dart'; 
import 'package:em_app/pages/outboundemail/outboundemail_graph.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_data_table.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_form.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_filter.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_dropdown.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_search.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_edit.dart'; 
import 'package:em_app/pages/outboundemailaudit/outboundemailaudit_graph.dart'; 
import 'package:em_app/pages/project/project_data_table.dart'; 
import 'package:em_app/pages/project/project_form.dart'; 
import 'package:em_app/pages/project/project_filter.dart'; 
import 'package:em_app/pages/project/project_dropdown.dart'; 
import 'package:em_app/pages/project/project_search.dart'; 
import 'package:em_app/pages/project/project_edit.dart'; 
import 'package:em_app/pages/project/project_graph.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_data_table.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_form.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_filter.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_dropdown.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_search.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_edit.dart'; 
import 'package:em_app/pages/projectcontacts1c/projectcontacts1c_graph.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_data_table.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_form.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_filter.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_dropdown.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_search.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_edit.dart'; 
import 'package:em_app/pages/projectcstm/projectcstm_graph.dart'; 
import 'package:em_app/pages/projecttask/projecttask_data_table.dart'; 
import 'package:em_app/pages/projecttask/projecttask_form.dart'; 
import 'package:em_app/pages/projecttask/projecttask_filter.dart'; 
import 'package:em_app/pages/projecttask/projecttask_dropdown.dart'; 
import 'package:em_app/pages/projecttask/projecttask_search.dart'; 
import 'package:em_app/pages/projecttask/projecttask_edit.dart'; 
import 'package:em_app/pages/projecttask/projecttask_graph.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_data_table.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_form.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_filter.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_dropdown.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_search.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_edit.dart'; 
import 'package:em_app/pages/projecttaskaudit/projecttaskaudit_graph.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_data_table.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_form.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_filter.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_dropdown.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_search.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_edit.dart'; 
import 'package:em_app/pages/projectusers1c/projectusers1c_graph.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_data_table.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_form.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_filter.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_dropdown.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_search.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_edit.dart'; 
import 'package:em_app/pages/projectsaccounts/projectsaccounts_graph.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_data_table.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_form.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_filter.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_dropdown.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_search.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_edit.dart'; 
import 'package:em_app/pages/projectsbugs/projectsbugs_graph.dart'; 
import 'package:em_app/pages/projectscases/projectscases_data_table.dart'; 
import 'package:em_app/pages/projectscases/projectscases_form.dart'; 
import 'package:em_app/pages/projectscases/projectscases_filter.dart'; 
import 'package:em_app/pages/projectscases/projectscases_dropdown.dart'; 
import 'package:em_app/pages/projectscases/projectscases_search.dart'; 
import 'package:em_app/pages/projectscases/projectscases_edit.dart'; 
import 'package:em_app/pages/projectscases/projectscases_graph.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_data_table.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_form.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_filter.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_dropdown.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_search.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_edit.dart'; 
import 'package:em_app/pages/projectscontacts/projectscontacts_graph.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_data_table.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_form.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_filter.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_dropdown.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_search.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_edit.dart'; 
import 'package:em_app/pages/projectsopportunities/projectsopportunities_graph.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_data_table.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_form.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_filter.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_dropdown.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_search.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_edit.dart'; 
import 'package:em_app/pages/projectsproducts/projectsproducts_graph.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_data_table.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_form.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_filter.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_dropdown.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_search.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_edit.dart'; 
import 'package:em_app/pages/prospectlistcampaigns/prospectlistcampaigns_graph.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_data_table.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_form.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_filter.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_dropdown.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_search.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_edit.dart'; 
import 'package:em_app/pages/prospectlists/prospectlists_graph.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_data_table.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_form.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_filter.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_dropdown.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_search.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_edit.dart'; 
import 'package:em_app/pages/prospectlistsprospects/prospectlistsprospects_graph.dart'; 
import 'package:em_app/pages/prospects/prospects_data_table.dart'; 
import 'package:em_app/pages/prospects/prospects_form.dart'; 
import 'package:em_app/pages/prospects/prospects_filter.dart'; 
import 'package:em_app/pages/prospects/prospects_dropdown.dart'; 
import 'package:em_app/pages/prospects/prospects_search.dart'; 
import 'package:em_app/pages/prospects/prospects_edit.dart'; 
import 'package:em_app/pages/prospects/prospects_graph.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_data_table.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_form.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_filter.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_dropdown.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_search.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_edit.dart'; 
import 'package:em_app/pages/prospectscstm/prospectscstm_graph.dart'; 
import 'package:em_app/pages/relationships/relationships_data_table.dart'; 
import 'package:em_app/pages/relationships/relationships_form.dart'; 
import 'package:em_app/pages/relationships/relationships_filter.dart'; 
import 'package:em_app/pages/relationships/relationships_dropdown.dart'; 
import 'package:em_app/pages/relationships/relationships_search.dart'; 
import 'package:em_app/pages/relationships/relationships_edit.dart'; 
import 'package:em_app/pages/relationships/relationships_graph.dart'; 
import 'package:em_app/pages/releases/releases_data_table.dart'; 
import 'package:em_app/pages/releases/releases_form.dart'; 
import 'package:em_app/pages/releases/releases_filter.dart'; 
import 'package:em_app/pages/releases/releases_dropdown.dart'; 
import 'package:em_app/pages/releases/releases_search.dart'; 
import 'package:em_app/pages/releases/releases_edit.dart'; 
import 'package:em_app/pages/releases/releases_graph.dart'; 
import 'package:em_app/pages/reminders/reminders_data_table.dart'; 
import 'package:em_app/pages/reminders/reminders_form.dart'; 
import 'package:em_app/pages/reminders/reminders_filter.dart'; 
import 'package:em_app/pages/reminders/reminders_dropdown.dart'; 
import 'package:em_app/pages/reminders/reminders_search.dart'; 
import 'package:em_app/pages/reminders/reminders_edit.dart'; 
import 'package:em_app/pages/reminders/reminders_graph.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_data_table.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_form.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_filter.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_dropdown.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_search.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_edit.dart'; 
import 'package:em_app/pages/remindersinvitees/remindersinvitees_graph.dart'; 
import 'package:em_app/pages/roles/roles_data_table.dart'; 
import 'package:em_app/pages/roles/roles_form.dart'; 
import 'package:em_app/pages/roles/roles_filter.dart'; 
import 'package:em_app/pages/roles/roles_dropdown.dart'; 
import 'package:em_app/pages/roles/roles_search.dart'; 
import 'package:em_app/pages/roles/roles_edit.dart'; 
import 'package:em_app/pages/roles/roles_graph.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_data_table.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_form.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_filter.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_dropdown.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_search.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_edit.dart'; 
import 'package:em_app/pages/rolesmodules/rolesmodules_graph.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_data_table.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_form.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_filter.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_dropdown.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_search.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_edit.dart'; 
import 'package:em_app/pages/rolesusers/rolesusers_graph.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_data_table.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_form.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_filter.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_dropdown.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_search.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_edit.dart'; 
import 'package:em_app/pages/savedsearch/savedsearch_graph.dart'; 
import 'package:em_app/pages/schedulers/schedulers_data_table.dart'; 
import 'package:em_app/pages/schedulers/schedulers_form.dart'; 
import 'package:em_app/pages/schedulers/schedulers_filter.dart'; 
import 'package:em_app/pages/schedulers/schedulers_dropdown.dart'; 
import 'package:em_app/pages/schedulers/schedulers_search.dart'; 
import 'package:em_app/pages/schedulers/schedulers_edit.dart'; 
import 'package:em_app/pages/schedulers/schedulers_graph.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_data_table.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_form.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_filter.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_dropdown.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_search.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_edit.dart'; 
import 'package:em_app/pages/securitygroups/securitygroups_graph.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_data_table.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_form.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_filter.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_dropdown.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_search.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_edit.dart'; 
import 'package:em_app/pages/securitygroupsaclroles/securitygroupsaclroles_graph.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_data_table.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_form.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_filter.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_dropdown.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_search.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_edit.dart'; 
import 'package:em_app/pages/securitygroupsaudit/securitygroupsaudit_graph.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_data_table.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_form.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_filter.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_dropdown.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_search.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_edit.dart'; 
import 'package:em_app/pages/securitygroupsdefault/securitygroupsdefault_graph.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_data_table.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_form.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_filter.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_dropdown.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_search.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_edit.dart'; 
import 'package:em_app/pages/securitygroupsrecords/securitygroupsrecords_graph.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_data_table.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_form.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_filter.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_dropdown.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_search.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_edit.dart'; 
import 'package:em_app/pages/securitygroupsusers/securitygroupsusers_graph.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_data_table.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_form.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_filter.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_dropdown.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_search.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_edit.dart'; 
import 'package:em_app/pages/sugarfeed/sugarfeed_graph.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_data_table.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_form.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_filter.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_search.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_edit.dart'; 
import 'package:em_app/pages/surveyquestionoptions/surveyquestionoptions_graph.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_data_table.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_form.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_filter.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_search.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_edit.dart'; 
import 'package:em_app/pages/surveyquestionoptionsaudit/surveyquestionoptionsaudit_graph.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_data_table.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_form.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_filter.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_search.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_edit.dart'; 
import 'package:em_app/pages/surveyquestionoptionssurveyquestionresponses/surveyquestionoptionssurveyquestionresponses_graph.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_data_table.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_form.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_filter.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_search.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_edit.dart'; 
import 'package:em_app/pages/surveyquestionresponses/surveyquestionresponses_graph.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_data_table.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_form.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_filter.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_search.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_edit.dart'; 
import 'package:em_app/pages/surveyquestionresponsesaudit/surveyquestionresponsesaudit_graph.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_data_table.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_form.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_filter.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_dropdown.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_search.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_edit.dart'; 
import 'package:em_app/pages/surveyquestions/surveyquestions_graph.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_data_table.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_form.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_filter.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_dropdown.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_search.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_edit.dart'; 
import 'package:em_app/pages/surveyquestionsaudit/surveyquestionsaudit_graph.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_data_table.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_form.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_filter.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_dropdown.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_search.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_edit.dart'; 
import 'package:em_app/pages/surveyresponses/surveyresponses_graph.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_data_table.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_form.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_filter.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_dropdown.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_search.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_edit.dart'; 
import 'package:em_app/pages/surveyresponsesaudit/surveyresponsesaudit_graph.dart'; 
import 'package:em_app/pages/surveys/surveys_data_table.dart'; 
import 'package:em_app/pages/surveys/surveys_form.dart'; 
import 'package:em_app/pages/surveys/surveys_filter.dart'; 
import 'package:em_app/pages/surveys/surveys_dropdown.dart'; 
import 'package:em_app/pages/surveys/surveys_search.dart'; 
import 'package:em_app/pages/surveys/surveys_edit.dart'; 
import 'package:em_app/pages/surveys/surveys_graph.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_data_table.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_form.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_filter.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_dropdown.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_search.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_edit.dart'; 
import 'package:em_app/pages/surveysaudit/surveysaudit_graph.dart'; 
import 'package:em_app/pages/tasks/tasks_data_table.dart'; 
import 'package:em_app/pages/tasks/tasks_form.dart'; 
import 'package:em_app/pages/tasks/tasks_filter.dart'; 
import 'package:em_app/pages/tasks/tasks_dropdown.dart'; 
import 'package:em_app/pages/tasks/tasks_search.dart'; 
import 'package:em_app/pages/tasks/tasks_edit.dart'; 
import 'package:em_app/pages/tasks/tasks_graph.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_data_table.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_form.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_filter.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_dropdown.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_search.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_edit.dart'; 
import 'package:em_app/pages/templatesectionline/templatesectionline_graph.dart'; 
import 'package:em_app/pages/tracker/tracker_data_table.dart'; 
import 'package:em_app/pages/tracker/tracker_form.dart'; 
import 'package:em_app/pages/tracker/tracker_filter.dart'; 
import 'package:em_app/pages/tracker/tracker_dropdown.dart'; 
import 'package:em_app/pages/tracker/tracker_search.dart'; 
import 'package:em_app/pages/tracker/tracker_edit.dart'; 
import 'package:em_app/pages/tracker/tracker_graph.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_data_table.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_form.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_filter.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_dropdown.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_search.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_edit.dart'; 
import 'package:em_app/pages/upgradehistory/upgradehistory_graph.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_data_table.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_form.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_filter.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_dropdown.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_search.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_edit.dart'; 
import 'package:em_app/pages/userpreferences/userpreferences_graph.dart'; 
import 'package:em_app/pages/users/users_data_table.dart'; 
import 'package:em_app/pages/users/users_form.dart'; 
import 'package:em_app/pages/users/users_filter.dart'; 
import 'package:em_app/pages/users/users_dropdown.dart'; 
import 'package:em_app/pages/users/users_search.dart'; 
import 'package:em_app/pages/users/users_edit.dart'; 
import 'package:em_app/pages/users/users_graph.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_data_table.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_form.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_filter.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_dropdown.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_search.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_edit.dart'; 
import 'package:em_app/pages/usersfeeds/usersfeeds_graph.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_data_table.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_form.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_filter.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_dropdown.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_search.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_edit.dart'; 
import 'package:em_app/pages/userslastimport/userslastimport_graph.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_data_table.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_form.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_filter.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_dropdown.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_search.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_edit.dart'; 
import 'package:em_app/pages/userspasswordlink/userspasswordlink_graph.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_data_table.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_form.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_filter.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_dropdown.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_search.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_edit.dart'; 
import 'package:em_app/pages/userssignatures/userssignatures_graph.dart'; 
import 'package:em_app/pages/vcals/vcals_data_table.dart'; 
import 'package:em_app/pages/vcals/vcals_form.dart'; 
import 'package:em_app/pages/vcals/vcals_filter.dart'; 
import 'package:em_app/pages/vcals/vcals_dropdown.dart'; 
import 'package:em_app/pages/vcals/vcals_search.dart'; 
import 'package:em_app/pages/vcals/vcals_edit.dart'; 
import 'package:em_app/pages/vcals/vcals_graph.dart'; 
*/

class NavBar extends StatelessWidget { 
  const NavBar({Key? key}) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) { 
    return Drawer( 
      child: ListView( 
        // Remove padding 
        padding: EdgeInsets.zero, 
        children: [ 
          const UserAccountsDrawerHeader( 
            accountName: Text('Your App Name'), 
            accountEmail: Text('email@yourdomain.com'), 
            currentAccountPicture: CircleAvatar( 
              child: ClipOval(child: Icon(Icons.business) 
                //Image.network('', fit: BoxFit.cover, width: 90, height: 90, ), 
                  ), 
            ), 
            decoration: BoxDecoration( 
              color: Colors.blue, 
              //image: DecorationImage(fit: BoxFit.fill, image: NetworkImage('')), 
            ), 
          ), 
 
          ListTile(  
            leading: const Icon(Icons.home_outlined),  
            title: const Text('Dashboard'),  
            onTap: () =>  
                            Navigator.pushAndRemoveUntil( 
                              context, 
                              MaterialPageRoute(  
                                      builder: (context) =>  const MyHomePage(), 
                                    ), 
                              (Route<dynamic> route) => false 
                              ) 
          ),  
          ListTile(  
            leading: const Icon(Icons.table_chart_outlined),  
            title: const Text('Table Menu List'),  
            onTap: () => Scaffold.of(context).openEndDrawer(),  
          ),  
          ListTile(  
            leading: const Icon(Icons.notification_add_outlined),  
            title: const Text('Notifications'),  
            onTap: () => MyNotificationSet().CheckAndNotify(),  
          ),  
          const Divider(),  
          ListTile(  
            leading: const Icon(Icons.settings),  
            title: const Text('Settings'),  
            onTap: () => null,  
          ),  
          const Divider(),  
          ListTile(  
            leading: const Icon(Icons.login_outlined),  
            title: const Text('Sign-In'),  
            onTap: () => Navigator.of(context).push(MaterialPageRoute(  
    			  builder: (context) =>   const SignInPage(),  
		      	)),  
          ),  
          ListTile(  
            leading: const Icon(Icons.logout_outlined),  
            title: const Text('Sign-Out'),  
            onTap: () => SignOutEmUser(context),  
          ),  
          ListTile(  
            leading: const Icon(Icons.login_outlined),  
            title: const Text('Sign-Up'),  
            onTap: () => Navigator.of(context).push(MaterialPageRoute(  
    			  builder: (context) =>   const SignUpPage(),  
		      	)),  
          ),  
          const Divider(),  
          ListTile(  
            title: const Text('Exit'),  
            leading: const Icon(Icons.exit_to_app),  
            onTap: () => SystemChannels.platform.invokeMethod('SystemNavigator.pop'), 
          ),  
 
        ], 
      ), 
    ); 
  } 
} 
 
class NavBarEnd extends StatelessWidget { 
  const NavBarEnd({Key? key}) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) { 
    return Drawer( 
      child: ListView( 
        // Remove padding 
        padding: EdgeInsets.zero, 
        children: [ 
          const UserAccountsDrawerHeader( 
            accountName: Text('Your App Name'), 
            accountEmail: Text('email@yourdomain.com'), 
            currentAccountPicture: CircleAvatar( 
              child: ClipOval(child: Icon(Icons.business) 
                //Image.network('', fit: BoxFit.cover, width: 90, height: 90, ), 
                  ), 
            ), 
            decoration: BoxDecoration( 
              color: Colors.blue, 
              //image: DecorationImage(fit: BoxFit.fill, image: NetworkImage('')), 
            ), 
          ), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('Accounts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            initiallyExpanded: true, 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('Accounts Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('Accounts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('Accounts List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('Accounts Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('Accounts List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('Accounts Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('Accounts Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('Accounts DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('Accounts DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('Accounts Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('Accounts Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('Accounts Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsBugs List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsBugs Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsBugs List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsBugs List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsBugs Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsBugs List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsBugs Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsBugs Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsBugs DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsBugs DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsBugs Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsBugs Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsBugs Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsBugsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsCases List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsCases Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsCases List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsCases List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsCases Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsCases List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsCases Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsCases Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsCases DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsCases DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsCases Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsCases Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsCases Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCasesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsContacts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsContacts Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsContacts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsContacts List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsContacts Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsContacts List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsContacts Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsContacts Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsContacts DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsContacts DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsContacts Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsContacts Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsContacts Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsContactsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsCstm List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsCstm Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsCstm List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsCstm List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsCstm Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsCstm List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsCstm Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsCstm Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsCstm DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsCstm DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmEditDd( 
					idCSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsCstm Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsCstm Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsCstm Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsCstmEdit( 
					idCSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AccountsOpportunities List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AccountsOpportunities Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AccountsOpportunities List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AccountsOpportunities List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AccountsOpportunities Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AccountsOpportunities List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AccountsOpportunities Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AccountsOpportunities Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AccountsOpportunities DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AccountsOpportunities DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AccountsOpportunities Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AccountsOpportunities Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AccountsOpportunities Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AccountsOpportunitiesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AclActions List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AclActions Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AclActions List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AclActions List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AclActions Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AclActions List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AclActions Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AclActions Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AclActions DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AclActions DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AclActions Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AclActions Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AclActions Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclActionsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AclRoles List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AclRoles Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AclRoles List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AclRoles List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AclRoles Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AclRoles List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AclRoles Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AclRoles Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AclRoles DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AclRoles DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AclRoles Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AclRoles Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AclRoles Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AclRolesActions List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AclRolesActions Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AclRolesActions List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AclRolesActions List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AclRolesActions Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AclRolesActions List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AclRolesActions Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AclRolesActions Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AclRolesActions DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AclRolesActions DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AclRolesActions Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AclRolesActions Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AclRolesActions Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesActionsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AclRolesUsers List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AclRolesUsers Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AclRolesUsers List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AclRolesUsers List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AclRolesUsers Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AclRolesUsers List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AclRolesUsers Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AclRolesUsers Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AclRolesUsers DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AclRolesUsers DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AclRolesUsers Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AclRolesUsers Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AclRolesUsers Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AclRolesUsersEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AddressBook List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AddressBook Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AddressBook List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AddressBook List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AddressBook Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AddressBook List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AddressBook Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AddressBook Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AddressBook DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AddressBook DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookEditDd( 
					assignedUserIdSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AddressBook Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AddressBook Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AddressBook Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AddressBookEdit( 
					assignedUserIdSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('Alerts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('Alerts Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('Alerts List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('Alerts List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('Alerts Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('Alerts List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('Alerts Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('Alerts Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('Alerts DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('Alerts DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('Alerts Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('Alerts Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('Alerts Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AlertsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmProjecttemplates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmProjecttemplates Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmProjecttemplates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmProjecttemplates List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmProjecttemplates Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmProjecttemplates List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmProjecttemplates Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmProjecttemplates Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmProjecttemplates DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmProjecttemplates DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmProjecttemplates Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmProjecttemplates Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmProjecttemplates Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmProjecttemplatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmProjecttemplatesAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmProjecttemplatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmProjecttemplatesAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmProjecttemplatesAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmProjecttemplatesAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmProjecttemplatesAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmProjecttemplatesAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmProjecttemplatesAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmProjecttemplatesAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmProjecttemplatesAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmProjecttemplatesAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmProjecttemplatesAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmProjecttemplatesContacts1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmProjecttemplatesContacts1C Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmProjecttemplatesContacts1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmProjecttemplatesContacts1C List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmProjecttemplatesContacts1C Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmProjecttemplatesContacts1C List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmProjecttemplatesContacts1C Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmProjecttemplatesContacts1C Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmProjecttemplatesContacts1C DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1COnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmProjecttemplatesContacts1C DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmProjecttemplatesContacts1C Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmProjecttemplatesContacts1C Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmProjecttemplatesContacts1C Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesContacts1CEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmProjecttemplatesProject1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmProjecttemplatesProject1C Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmProjecttemplatesProject1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmProjecttemplatesProject1C List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmProjecttemplatesProject1C Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmProjecttemplatesProject1C List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmProjecttemplatesProject1C Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmProjecttemplatesProject1C Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmProjecttemplatesProject1C DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1COnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmProjecttemplatesProject1C DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmProjecttemplatesProject1C Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmProjecttemplatesProject1C Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmProjecttemplatesProject1C Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesProject1CEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmProjecttemplatesUsers1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmProjecttemplatesUsers1C Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmProjecttemplatesUsers1C List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmProjecttemplatesUsers1C List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmProjecttemplatesUsers1C Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmProjecttemplatesUsers1C List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmProjecttemplatesUsers1C Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmProjecttemplatesUsers1C Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmProjecttemplatesUsers1C DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1COnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmProjecttemplatesUsers1C DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmProjecttemplatesUsers1C Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmProjecttemplatesUsers1C Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmProjecttemplatesUsers1C Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmProjecttemplatesUsers1CEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmTasktemplates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmTasktemplates Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmTasktemplates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmTasktemplates List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmTasktemplates Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmTasktemplates List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmTasktemplates Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmTasktemplates Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmTasktemplates DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmTasktemplates DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmTasktemplates Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmTasktemplates Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmTasktemplates Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmTasktemplatesAmProjecttemplatesC Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmTasktemplatesAmProjecttemplatesC Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAmProjecttemplatesCEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AmTasktemplatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AmTasktemplatesAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AmTasktemplatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AmTasktemplatesAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AmTasktemplatesAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AmTasktemplatesAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AmTasktemplatesAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AmTasktemplatesAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AmTasktemplatesAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AmTasktemplatesAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AmTasktemplatesAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AmTasktemplatesAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AmTasktemplatesAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AmTasktemplatesAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AobhBusinesshours List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AobhBusinesshours Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AobhBusinesshours List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AobhBusinesshours List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AobhBusinesshours Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AobhBusinesshours List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AobhBusinesshours Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AobhBusinesshours Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AobhBusinesshours DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AobhBusinesshours DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AobhBusinesshours Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AobhBusinesshours Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AobhBusinesshours Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AobhBusinesshoursEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AokKnowledgeBaseCategoriesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AokKnowledgeBaseCategoriesAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AokKnowledgeBaseCategoriesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AokKnowledgeBaseCategoriesAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AokKnowledgeBaseCategoriesAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AokKnowledgeBaseCategoriesAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AokKnowledgeBaseCategoriesAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AokKnowledgeBaseCategoriesAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgeBaseCategoriesAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AokKnowledgebase List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AokKnowledgebase Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AokKnowledgebase List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AokKnowledgebase List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AokKnowledgebase Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AokKnowledgebase List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AokKnowledgebase Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AokKnowledgebase Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AokKnowledgebase DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AokKnowledgebase DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AokKnowledgebase Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AokKnowledgebase Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AokKnowledgebase Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AokKnowledgebaseAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AokKnowledgebaseAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AokKnowledgebaseAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AokKnowledgebaseAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AokKnowledgebaseAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AokKnowledgebaseAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AokKnowledgebaseAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AokKnowledgebaseAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AokKnowledgebaseAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AokKnowledgebaseAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AokKnowledgebaseAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AokKnowledgebaseAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AokKnowledgebaseAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AokKnowledgebaseAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AopCaseEvents List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AopCaseEvents Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AopCaseEvents List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AopCaseEvents List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AopCaseEvents Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AopCaseEvents List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AopCaseEvents Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AopCaseEvents Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AopCaseEvents DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AopCaseEvents DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AopCaseEvents Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AopCaseEvents Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AopCaseEvents Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AopCaseEventsAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AopCaseEventsAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AopCaseEventsAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AopCaseEventsAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AopCaseEventsAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AopCaseEventsAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AopCaseEventsAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AopCaseEventsAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AopCaseEventsAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AopCaseEventsAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AopCaseEventsAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AopCaseEventsAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AopCaseEventsAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseEventsAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AopCaseUpdates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AopCaseUpdates Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AopCaseUpdates List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AopCaseUpdates List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AopCaseUpdates Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AopCaseUpdates List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AopCaseUpdates Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AopCaseUpdates Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AopCaseUpdates DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AopCaseUpdates DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AopCaseUpdates Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AopCaseUpdates Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AopCaseUpdates Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
    // ------------------ Main Screen ------------------ 
		  ListTile( 
			leading: const Icon(Icons.door_sliding_outlined), 
			title: const Text('AopCaseUpdatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
    // ------------------ More Screens ----------------- 
		  ExpansionTile( 
            leading: const Icon(Icons.album_outlined), //door_sliding_outlined 
            title: const Text('AopCaseUpdatesAudit Screens', 
              ), 
            //onTap: () => {}, 
            children: [ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.list_alt), 
			title: const Text('AopCaseUpdatesAudit List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.credit_card), 
			title: const Text('AopCaseUpdatesAudit List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.table_view), 
			title: const Text('AopCaseUpdatesAudit Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditDataTable(), 
			)), 
		  ), 
		  //If Non-Paginated View REQ, if Premium 
		  /* 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_column), 
			title: const Text('AopCaseUpdatesAudit List View (Full Data)'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditDataTable(viewType: "ListView", pageNo: -1,), 
			)), 
		  ), 
		  */ 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.manage_search_outlined), 
			title: const Text('AopCaseUpdatesAudit Filter'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditFilter(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('AopCaseUpdatesAudit Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditForm(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.arrow_drop_down_circle_outlined), 
			title: const Text('AopCaseUpdatesAudit DropDown Only'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditOnlyDd(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.view_agenda_outlined), 
			title: const Text('AopCaseUpdatesAudit DropDown and Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditEditDd( 
					idSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('AopCaseUpdatesAudit Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditSearch(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('AopCaseUpdatesAudit Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditGraph(), 
			)), 
		  ), 
		  ListTile( 
			horizontalTitleGap: 3, 
			contentPadding: const EdgeInsets.symmetric(horizontal: 40.0), 
			leading: const Icon(Icons.edit), 
			title: const Text('AopCaseUpdatesAudit Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const AopCaseUpdatesAuditEdit( 
					idSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  ], 
		  ), //ExpansionTile 
		  const Divider(), 
        ], 
      ), 
    ); 
  } 
} 
 
