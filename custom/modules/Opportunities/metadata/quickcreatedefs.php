<?php
$viewdefs ['Opportunities'] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'javascript' => '{$PROBABILITY_SCRIPT}',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'DEFAULT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 
          array (
            'name' => 'account_name',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
          ),
          1 => 
          array (
            'name' => 'opportunity_type',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'wfs_opp_capex_c',
            'label' => 'LBL_WFS_OPP_CAPEX',
          ),
          1 => 'date_closed',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'wfs_opp_connex_c',
            'label' => 'LBL_WFS_OPP_CONNEX',
          ),
          1 => 
          array (
            'name' => 'wfs_opp_filtering_c',
            'label' => 'LBL_WFS_OPP_FILTERING',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'wfs_opp_mng_srvc_c',
            'label' => 'LBL_WFS_OPP_MNG_SRVC',
          ),
          1 => 
          array (
            'name' => 'wfs_opp_maintenance_c',
            'label' => 'LBL_WFS_OPP_MAINTENANCE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'wfs_expected_revenue_c',
            'label' => 'LBL_WFS_EXPECTED_REVENUE',
          ),
          1 => '',
        ),
        6 => 
        array (
          0 => 'next_step',
          1 => 'sales_stage',
        ),
        7 => 
        array (
          0 => 'lead_source',
          1 => 'probability',
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
          ),
        ),
      ),
    ),
  ),
);
?>
