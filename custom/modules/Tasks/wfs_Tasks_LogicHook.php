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

require_once ('modules/Tasks/Task.php');
require_once ('modules/Bugs/Bug.php');


class BugStoryPointUpdateHook {

    function TaskPointsUpdate(&$bean, $event, $arguments){
   
    // Before Save: We only need to make this update if this Task is related to a Bug
    $related = array();
    // Don't do anything unless the Task Status is set at Complete
    if ($bean->status != "Completed"){
	return 0;
	}
	
    //$GLOBALS['log']->info("LOGIC HOOK (TaskPointsUpdate) Gathering Related information ");
    $bean->load_relationships();
    $related_record = $bean->get_linked_beans('bugs', 'Bug');
    if (!empty($related_record)){
      //$GLOBALS['log']->info("LOGIC HOOK (TaskPointsUpdate) Task is Related to a Bug ");
      // If the related_record is not null then this task is related to a Bugs
      // Lets get the first relationship return, which should be the primary relationship
      $relatedobject = $related_record['0'];
      
      // Next we need the Bug record Object to work on
      $BugFocus = new Bug;
      
      // Container for the update
      // Set to Task Story Point entry
      $StoryPointsUpdate = ($bean->dev_story_points_c);
      
      $BugFocus->retrieve($relatedobject->id);
      //$GLOBALS['log']->info("LOGIC HOOK (TaskPointsUpdate) Have attempted retrieve Bug : ".$relatedobject->id);
      // Now we need to know if this is a new task, or an updated one
      if ( !empty($bean->fetched_row) && !empty($bean->fetched_row['id'])){
	//We are working with an amended task. Check story point record for changes
	if (($bean->fetched_row['dev_story_points_c'] > 0) && (($bean->fetched_row['dev_story_points_c']) != ($bean->dev_story_points_c))){
	    $StoryPointsUpdate = (($bean->dev_story_points_c) - ($bean->fetched_row['dev_story_points_c']));
	  }
	  else{
	  $StoryPointsUpdate = ($bean->dev_story_points_c);
	  //$GLOBALS['log']->info("LOGIC HOOK (TaskPointsUpdate) Task has Story Point value of : ".$StoryPointsUpdate);
	  }
      }
      
      // Add the story points from this Task to the dev_points_actual_c field for the BugFocus
      $BugFocus->dev_points_actual_c = ($BugFocus->dev_points_actual_c + $StoryPointsUpdate);
      //$GLOBALS['log']->info("LOGIC HOOK (TaskPointsUpdate) Attempting to Save Bug with update for actual story points of : ".$BugFocus->dev_points_actual_c);
      $BugFocus->save();
    }
   return 0;
   }
} 
 
 ?>