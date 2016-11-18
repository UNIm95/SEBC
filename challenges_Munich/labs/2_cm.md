[centos@ip-10-0-0-188 ~]$ ll /etc/yum.repos.d/
total 36
-rw-r--r--. 1 root root 1991 2015-08-03 16:13 CentOS-Base.repo
-rw-r--r--. 1 root root  647 2015-08-03 16:13 CentOS-Debuginfo.repo
-rw-r--r--. 1 root root  289 2015-08-03 16:13 CentOS-fasttrack.repo
-rw-r--r--. 1 root root  630 2015-08-03 16:13 CentOS-Media.repo
-rw-r--r--. 1 root root 6259 2015-08-03 16:13 CentOS-Vault.repo
-rw-r--r--  1 root root  293 2016-11-18 09:41 cloudera-manager.repo



mysql> show grants for 'scm'@'10.0.0.188';
+-------------------------------------------------------------------------------------------------------------+
| Grants for scm@10.0.0.188                                                                                   |
+-------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'10.0.0.188' IDENTIFIED BY PASSWORD '*F846B31F10DD4389C384272E70B9BBA3AD9E1F94' |
| GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'10.0.0.188'                                                       |
+-------------------------------------------------------------------------------------------------------------+
2 rows in set (0,00 sec)


[centos@ip-10-0-0-188 ~]$ sudo /usr/share/cmf/schema/scm_prepare_database.sh -h ip-10-0-0-184 mysql scm scm 1qaz2wsx
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
log4j:ERROR Could not find value for key log4j.appender.A
log4j:ERROR Could not instantiate appender named "A".
[2016-11-18 10:08:27,351] INFO     0[main] - com.cloudera.enterprise.dbutil.DbCommandExecutor.testDbConnection(DbCommandExecutor.java) - Successfully connected to database.
All done, your SCM database is configured correctly!
