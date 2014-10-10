<?php
$viewdefs ['Opportunities'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
          0 => 'name',
          1 => 'account_name',
        ),
        1 => 
        array (
          0 => 'date_closed',
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
          0 => 
          array (
            'name' => 'wfs_opp_opex_c',
            'label' => 'LBL_WFS_OPP_OPEX',
          ),
          1 => '',
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'amount',
            'label' => '{$MOD.LBL_AMOUNT} ({$CURRENCY})',
          ),
        ),
        8 => 
        array (
          0 => 'sales_stage',
          1 => 'opportunity_type',
        ),
        9 => 
        array (
          0 => 'probability',
          1 => 'lead_source',
        ),
        10 => 
        array (
          0 => 'next_step',
          1 => 'campaign_name',
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'nl2br' => true,
          ),
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'label' => 'LBL_DATE_MODIFIED',
            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_entered',
            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
          ),
        ),
      ),
    ),
  ),
);
?>
