<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2014-10-09 15:14:47
$dictionary['Opportunity']['fields']['wfs_opp_capex_c']['labelValue']='Capex';

 


$dictionary['Opportunity']['fields']['SecurityGroups'] = array (
  	'name' => 'SecurityGroups',
    'type' => 'link',
	'relationship' => 'securitygroups_opportunities',
	'module'=>'SecurityGroups',
	'bean_name'=>'SecurityGroup',
    'source'=>'non-db',
	'vname'=>'LBL_SECURITYGROUPS',
);






 // created: 2014-10-09 15:13:36
$dictionary['Opportunity']['fields']['wfs_opp_opex_c']['labelValue']='Opex';

 

 // created: 2014-10-09 15:39:34
$dictionary['Opportunity']['fields']['wfs_opp_maintenance_c']['labelValue']='Maintenance';

 

 // created: 2014-10-02 12:13:03

 

 // created: 2014-10-02 12:13:03

 

 // created: 2014-10-02 12:13:03

 

$dictionary["Opportunity"]["fields"]["aos_quotes"] = array (
  'name' => 'aos_quotes',
    'type' => 'link',
    'relationship' => 'opportunity_aos_quotes',
    'module'=>'AOS_Quotes',
    'bean_name'=>'AOS_Quotes',
    'source'=>'non-db',
);

$dictionary["Opportunity"]["relationships"]["opportunity_aos_quotes"] = array (
	'lhs_module'=> 'Opportunities', 
	'lhs_table'=> 'opportunities', 
	'lhs_key' => 'id',
	'rhs_module'=> 'AOS_Quotes', 
	'rhs_table'=> 'aos_quotes', 
	'rhs_key' => 'opportunity_id',
	'relationship_type'=>'one-to-many',
);

$dictionary["Opportunity"]["fields"]["aos_contracts"] = array (
  'name' => 'aos_contracts',
    'type' => 'link',
    'relationship' => 'opportunity_aos_contracts',
    'module'=>'AOS_Contracts',
    'bean_name'=>'AOS_Contracts',
    'source'=>'non-db',
);

$dictionary["Opportunity"]["relationships"]["opportunity_aos_contracts"] = array (
	'lhs_module'=> 'Opportunities', 
	'lhs_table'=> 'opportunities', 
	'lhs_key' => 'id',
	'rhs_module'=> 'AOS_Contracts', 
	'rhs_table'=> 'aos_contracts', 
	'rhs_key' => 'opportunity_id',
	'relationship_type'=>'one-to-many',
);



 // created: 2014-10-02 12:13:03

 

 // created: 2014-10-09 15:15:46
$dictionary['Opportunity']['fields']['wfs_opp_mng_srvc_c']['labelValue']='Managed Services';

 

 // created: 2014-10-09 15:16:20
$dictionary['Opportunity']['fields']['wfs_opp_connex_c']['labelValue']='Connectivity';

 

 // created: 2014-10-09 15:16:59
$dictionary['Opportunity']['fields']['wfs_opp_filtering_c']['labelValue']='Content Filtering';

 
?>