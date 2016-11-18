mysql> SHOW GRANTS FOR rman;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*F846B31F10DD4389C384272E70B9BBA3AD9E1F94' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0,00 sec)

mysql> SHOW GRANTS FOR hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*F846B31F10DD4389C384272E70B9BBA3AD9E1F94' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0,00 sec)

mysql> SHOW GRANTS FOR scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*F846B31F10DD4389C384272E70B9BBA3AD9E1F94' |
| GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'%'                                                       |
+----------------------------------------------------------------------------------------------------+
2 rows in set (0,00 sec)



[centos@ip-10-0-0-188 ~]$ sudo -u hdfs hdfs dfs -mkdir /user/bavaria
[centos@ip-10-0-0-188 ~]$ sudo -u hdfs hdfs dfs -mkdir /user/saxony
[centos@ip-10-0-0-184 ~]$ sudo -u hdfs hdfs dfs -chown -R bavaria:social /user/bavaria
[centos@ip-10-0-0-184 ~]$ sudo -u hdfs hdfs dfs -chown -R saxony:democratic /user/saxony
[centos@ip-10-0-0-184 ~]$ sudo -u hdfs hdfs dfs -ls /user
Found 8 items
drwxr-xr-x   - admin   admin               0 2016-11-18 10:41 /user/admin
drwxr-xr-x   - bavaria social              0 2016-11-18 10:52 /user/bavaria
drwxr-xr-x   - hdfs    supergroup          0 2016-11-18 10:40 /user/hdfs
drwxrwxrwx   - mapred  hadoop              0 2016-11-18 10:33 /user/history
drwxrwxr-t   - hive    hive                0 2016-11-18 10:34 /user/hive
drwxrwxr-x   - hue     hue                 0 2016-11-18 10:35 /user/hue
drwxrwxr-x   - oozie   oozie               0 2016-11-18 10:35 /user/oozie
drwxr-xr-x   - saxony  democratic          0 2016-11-18 10:52 /user/saxony



[centos@ip-10-0-0-188 ~]$ curl -u "admin:admin" http://localhost:7180/api/v12/hosts
{
  "items" : [ {
    "hostId" : "i-b389652b",
    "ipAddress" : "10.0.0.184",
    "hostname" : "ip-10-0-0-184.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-0-0-188.ec2.internal:7180/cmf/hostRedirect/i-b389652b",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 8,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 31549554688
  }, {
    "hostId" : "i-b0896528",
    "ipAddress" : "10.0.0.185",
    "hostname" : "ip-10-0-0-185.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-0-0-188.ec2.internal:7180/cmf/hostRedirect/i-b0896528",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 8,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 31549554688
  }, {
    "hostId" : "i-b1896529",
    "ipAddress" : "10.0.0.186",
    "hostname" : "ip-10-0-0-186.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-0-0-188.ec2.internal:7180/cmf/hostRedirect/i-b1896529",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 8,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 31549554688
  }, {
    "hostId" : "i-8e896516",
    "ipAddress" : "10.0.0.187",
    "hostname" : "ip-10-0-0-187.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-0-0-188.ec2.internal:7180/cmf/hostRedirect/i-8e896516",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 8,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 31549554688
  }, {
    "hostId" : "i-8f896517",
    "ipAddress" : "10.0.0.188",
    "hostname" : "ip-10-0-0-188.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-0-0-188.ec2.internal:7180/cmf/hostRedirect/i-8f896517",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 8,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 31549554688
  } ]
}[centos@ip-10-0-0-188 ~]$ 
