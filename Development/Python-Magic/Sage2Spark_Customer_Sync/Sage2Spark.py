#!/usr/bin/env python3

#   Sage to SPARKCRM Customer Data synch
#
#   Synchronises Sage Customer records with SparkCRM, using a CSV File supplied to the /Sage/CustomerDetails.csv file,
#   delivered via a scheduled task on the SageServer
#
#   @package    SPARKCRM
#   @copyright  2003-2014 WifiSpark Limited. All rights reserved.
#   @license    http://www.wifispark.com/license/spark-1.00.txt  SPARK License 1.00
#   @version    
#   @see        
#   @since      
#   @deprecated 
#


#Psuedo Code -

#variables / arrays


#SageData array
#SparkData array
#DataDictionary array of comparision fields in both data arrays
# Repurpose ticker symbol for SageReference

#Open a MySQL DB Object and load joined Account data, where account type is Customer into SparkData

#Open SageCustomers.csv file and load in SageData array

SageDataFile = open('CustomerDetails.csv').read()    #Load Sage Customer File
try:
  SageData = SageDataFile.readlines()
finally:
  SageDataFile.close()
  

#NOTE: At this stage we are not looking for a bi-directional connection, but we might later, so add a stubb method for outputting the Customer date

#method# Iterate through array rows and comparing fields as set by DataDictionary, where these differ data from SageData array should be used to update SparkData.
# Think about how this can be flexible enough to  be bi-directional later

#Once the data is synched, output SageData to the csv file
#Update SparkCRM Accounts data

#Cleanup and exit

