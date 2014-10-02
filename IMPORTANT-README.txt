### SparkCRM Staging and Production management ####

# 02 October 2014 - Rick T

The SparkCRM code base is managed using a Develop, Stage, Production method
The Production server hold ONLY the production code, and is a clone of the Staging instance
which resides on Ricks laptop (FIXME)

The SparkCRM Staging version can be found in /home/ricktimmis/WebLocal/SparkCRM/Staging/SuiteCRM/
This is a clone of the SparkCRM-Develop origin which is also resides on Ricks Laptop (FIXME Too)

See the WiFi SPARK Wiki SparkCRM for details of the source repository management and development
structure and strategy.

** NOTE **    <-- LOOK IMPORTANT BIT
========= 

DO NOT Push code from Staging to SparkCRM-Develop.
DO NOT Push code from Production to Staging.

That's all folks !!
