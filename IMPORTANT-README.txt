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

07-10-2014_14:18:00 ricktimmis

Added to file lines to .gitignore config_override.php and /custom/blowfish/*
The first is to ensure that Theme changes in the Production version don't get clobbered by an updated
The second to so that SHA Hashes which are instance specific don't get clobbered either

	------

07-10-2014_11:55:00 ricktimms

Installed the Gantt Chart module, which potentially makes some changes in the database
I dropped a mysqldump of the DB which can be run against the Production instance if required

	------
