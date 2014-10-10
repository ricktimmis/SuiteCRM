<?php
$viewdefs ['Opportunities'] = 
array (
  'EditView' => 
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
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
          ),
          1 => 'account_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'label' => 'LBL_CURRENCY',
          ),
          1 => 
          array (
            'name' => 'date_closed',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'wfs_opp_capex_c',
            'label' => 'LBL_WFS_OPP_CAPEX',
          ),
          1 => 
          array (
            'name' => 'wfs_opp_connex_c',
            'label' => 'LBL_WFS_OPP_CONNEX',
          ),
        ),
        3 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'wfs_opp_filtering_c',
            'label' => 'LBL_WFS_OPP_FILTERING',
          ),
        ),
        4 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'wfs_opp_mng_srvc_c',
            'label' => 'LBL_WFS_OPP_MNG_SRVC',
          ),
        ),
        5 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'wfs_opp_maintenance_c',
            'label' => 'LBL_WFS_OPP_MAINTENANCE',
          ),
        ),
        6 => 
        array (
          0 => '',
          1 => 'opportunity_type',
        ),
        7 => 
        array (
          0 => 'sales_stage',
          1 => 'lead_source',
        ),
        8 => 
        array (
          0 => 'probability',
          1 => 'campaign_name',
        ),
        9 => 
        array (
          0 => 'next_step',
        ),
        10 => 
        array (
          0 => 'description',
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
