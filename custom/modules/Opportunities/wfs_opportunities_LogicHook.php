<?php

/**
 * Opportunities Module Logic Hook 
 *
 * Opportunity values are calculated based upon a Capex ( Capital value ) and Opex ( Operational value ) of the opportunity
 * via formula Capex + ( Opex * 12 ) where 12 is months, giving an annual value for Operational costs
 * Note: this is also linked to the Opportunity type, where Maint 36 and Maint 60 calculated the contract period
 *
 * 
 *
 * @package    SPARK_CRM
 * @copyright  2003-2014 WifiSpark Limited. All rights reserved.
 * @license    http://www.wifispark.com/license/spark-1.00.txt  SPARK License 1.00
 * @version    Spark_CRM 1.0.3
 * @see        NetOther, Net_Sample::Net_Sample()
 * @since      File available since Release 1.0.3
 * @deprecated N/A
 *
 * @author	ricktimmis <rtimmis@wifispark.com>
 */
 
if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

class OpportunityCalculationHook {
    function UpdateOpportunityValue(&$bean, $event, $arguments) {
    // before_save
    // DEBUG
    $GLOBALS['log']->debug("WiFiSPARK - Calculate Opportunity Value Hook called");
    $bean->wfs_opp_opex_c = ( $bean->wfs_opp_mng_srvc_c + $bean->wfs_opp_connex_c + $bean->wfs_opp_filtering_c + $bean->wfs_opp_maintenance_c );
    $bean->amount = ( $bean->wfs_opp_capex_c + ($bean->wfs_opp_opex_c * 12));
    // Now lets do a currency conversion, and load that value into amount_usdollar
    $currency = new Currency();
    $currency->retrieve($bean->currency_id);
    $bean->amount_usdollar = $currency->convertToDollar($bean->amount);
    }
} 
 
 
 
 
 ?>