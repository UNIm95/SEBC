### Upgrade Cloudera Manager


1. Report the latest available version of the API

        [centos@ip-10-0-0-253 yum.repos.d]$ curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v14/cm/version
        {
          "version" : "5.9.0",
          "buildUser" : "jenkins",
          "buildTimestamp" : "20161006-1801",
          "gitHash" : "898a5e032c080e18833dfc58180761f6ef2ea351",
          "snapshot" : false
        }
        [centos@ip-10-0-0-253 yum.repos.d]$ curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v15/cm/version
        [centos@ip-10-0-0-253 yum.repos.d]$
    
    It seems that the latest version is 14.

2. Report the CM version

        [centos@ip-10-0-0-253 yum.repos.d]$ curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v14/cm/version
        {
           "version" : "5.9.0",
           "buildUser" : "jenkins",
           "buildTimestamp" : "20161006-1801",
           "gitHash" : "898a5e032c080e18833dfc58180761f6ef2ea351",
           "snapshot" : false
        }[
3.  List all CM users

        [centos@ip-10-0-0-253 yum.repos.d]$ curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v12/users
        {
          "items" : [ {
            "name" : "UNIm95",
            "roles" : [ "ROLE_ADMIN" ]
          }, {
            "name" : "admin",
            "roles" : [ "ROLE_LIMITED" ]
          }, {
            "name" : "minotaur",
            "roles" : [ "ROLE_CONFIGURATOR" ]
          } ]
         }

4. Report the database server in use by CM

        [centos@ip-10-0-0-253 yum.repos.d]$ curl -X GET -u "UNIm95:cloudera" http://localhost:7180/api/v14/cm/scmDbInfo
        {
          "scmDbType" : "MYSQL",
          "embeddedDbUsed" : false
        }
