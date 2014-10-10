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
