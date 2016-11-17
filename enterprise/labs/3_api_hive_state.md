### Hive states

 1. Hive status

    	 curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v2/clusters/Ioann_Denisov_Cluster/services/hive/
    	 {
           "name" : "hive",
           "type" : "HIVE",
           "clusterRef" : {
             "clusterName" : "cluster"
           },
           "serviceUrl" : "http://ip-10-0-0-253.ec2.internal:7180/cmf/serviceRedirect/hive",
           "serviceState" : "STARTED",
           "healthSummary" : "GOOD",
           "healthChecks" : [ {
             "name" : "HIVE_HIVEMETASTORES_HEALTHY",
             "summary" : "GOOD"
           }, {
             "name" : "HIVE_HIVESERVER2S_HEALTHY",
             "summary" : "GOOD"
           } ],
           "configStale" : false,
           "maintenanceMode" : false,
           "maintenanceOwners" : [ ],
           "displayName" : "Hive"
          }
 2. Hive restart
 
        curl -X POST -u "UNIm95:cloudera" http://localhost:7180/api/v12/clusters/Ioann_Denisov_Cluster/services/hive/commands/restart
    	[centos@ip-10-0-0-253 ~]$ curl -XPOST -u "UNIm95:cloudera" http://localhost:7180/api/v12/clusters/Ioann_Denisov_Cluster/services/hive/commands/restart
    	{
    	  "id" : 664,
    	  "name" : "Restart",
    	  "startTime" : "2016-11-17T09:00:43.411Z",
    	  "active" : true,
    	  "serviceRef" : {
    	    "clusterName" : "cluster",
    	    "serviceName" : "hive"
    	  }
    	}
 3. Hive stop

    	[centos@ip-10-0-0-253 ~]$ curl -X POST -u "UNIm95:cloudera" http://localhost:7180/api/v12/clusters/Ioann_Denisov_Cluster/services/hive/commands/stop
    	{
    	  "id" : 673,
    	  "name" : "Stop",
    	  "startTime" : "2016-11-17T09:02:13.783Z",
    	  "active" : true,
    	  "serviceRef" : {
    	    "clusterName" : "cluster",
    	    "serviceName" : "hive"
    	  }
    	}



 4.  Hive start
 
    	[centos@ip-10-0-0-253 ~]$ curl -X POST -u "UNIm95:cloudera" http://localhost:7180/api/v12/clusters/Ioann_Denisov_Cluster/services/hive/commands/start
    	{
    	  "id" : 677,
    	  "name" : "Start",
    	  "startTime" : "2016-11-17T09:03:27.499Z",
    	  "active" : true,
    	  "serviceRef" : {
    	    "clusterName" : "cluster",
    	    "serviceName" : "hive"
    	  }
    	}