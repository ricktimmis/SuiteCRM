### SparkCRM Staging and Production management ####

# 02 October 2014 - Rick T

The SparkCRM code base is managed using a Develop, Stage, Production method
The Production server hold ONLY the production code, and is a clone of the Staging instance
which resides on Ricks laptop (FIXME)

The SparkCRM Staging version can be found in /home/ricktimmis/WebLocal/SparkCRM/Staging/SuiteCRM/
This is a clone of the SparkCRM-Develop origin which is also resides on Ricks Laptop (FIXME Too)

See the WiFi SPARK Wiki SparkCRM for details of the source repository management and development
structure and strategy.

link: http://wiki/development/sparkcrm-dev

** NOTE **    <-- LOOK IMPORTANT BIT
========= 

DO NOT Push code from Staging to SparkCRM-Develop.
DO NOT Push code from Production to Staging.

That's all folks !!

----------
CHANGE LOG
==========

07-11-2014_16:09:00 ricktimmis

1 - Updated Email notifications in include/language/en_us.notify_template.html
2 - Introduced Bug Catagories ( PHASEXI, FLINT, DEVENV, SPARKCRM ) these can be used with code as unique identifies e.g #See Bug DEVENV-1174
3 - Removed redundant Sales Stages ( Qualification, Needs, Analysis, ID Decision, Perception Analysis ) Created Sales Stage Parked with probability of 20%
4 - Created Sales Opportunities "Reason Lost" dropdown field sales Opportunities 
5 - Introduced a Sage Sales Order reference field to Sales Opportunities for use by Admin and Finance
6 - Auto completion of Bug Story point time recording, from a Task to a Parent Bug
7 - Additional Expected Revenue field in Opportuntiies, In this field is entered a monthly anticipated value of WiFi access sales.
The value is multiplied by 12 and added to the Opportunity value.

sparkcrm-schema-update-06-11-2014.sql script.

** NOTE:  Upgrading to this version WILL require the above sql update script to be run against the production database. *

Bumped SparkCRM.php version number to 1.0.5

28-10-2014_13:30:00 ricktimmis

Several updates and customisations to fields and layouts in Modules, Bugs, Products, Quotes and Tasks. Additions to industry_dom 
Customisations created some new tables, and additional field meta data, these are taken care of using the 

sparkcrm-schema-update-28-10-2014.sql script.

** NOTE:  Upgrading to this version WILL require the above sql update script to be run against the production database. **

Bumped SparkCRM.php version number to 1.0.5  


24-10-2014_10:30:00 ricktimmis

Changed Opportunities QuickCreate Subpanel to reflect custom opportunity fields as shown below. Corrected Bug
where by amoun_usdollar was not being updated, and so Opportunity sub-panels not showing values. Also re-order logic hook execution, so that Activity stream would also show correct value for Opportunities.
Modified Employees list view layout to show Mobile number.
Modified drop down lists, in Bugs, and Projects
Bumped SparkCRM.php version number to 1.0.4 

10-10-2014_09:50:00 ricktimmis

Customised Opportunities module to include custom value fields, (Opex, Capex, Connectivity, Content Filtering, Managed Services, and Maintenance)- Hid the Opex and Opportunity_Amount fields in Edit View.
This is to force data to be entered as intial capital outlay for the opportunity (Capex) then an Operational value based upon key service metrics. These values are calculated to provide a monthly Operational Value ( Opex)
for the Opportunity. The Total opportunity amount is calculated as follows Opportunity_Amount = (Capex + (Opex * 12)).
Implementation required additional fields to be created in the opportunities_cstm table, and an SQL Creation script is available in /Development. This needs to be run against the production database to make the changes.

09-10-2013_10:34:00 ricktimmis

Modified the .gitignore file to include some modifications in the custom directory. This is so that updates, custom modules, and customisations
and business logic. deployed in the Staging instances gets carries across to the Production instance.
Bumped the SparkCRM.php version number to 1.0.3

07-10-2014_14:18:00 ricktimmis

Added to file lines to .gitignore config_override.php and /custom/blowfish/*
The first is to ensure that Theme changes in the Production version don't get clobbered by an updated
The second to so that SHA Hashes which are instance specific don't get clobbered either

	------

07-10-2014_11:55:00 ricktimms

Installed the Gantt Chart module, which potentially makes some changes in the database
I dropped a mysqldump of the DB which can be run against the Production instance if required

	------
