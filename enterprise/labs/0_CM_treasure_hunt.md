### CM Monitoring Lab

1. What is ubertask optimization?

 - Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the `mapreduce.job.ubertask.maxmaps`, `mapreduce.job.ubertask.maxreduces`, and `mapreduce.job.ubertask.maxbytes` settings.

2. Where in CM is the Kerberos Security Realm value displayed?
 - Cloudera Manager -> Administration -> Settings
3. Which CDH service(s) host a property for enabling Kerberos authentication?
	- All installed within Core hadoop install
4. How do you upgrade the CM agents?
 - Go to Hosts-> All hosts -> Re-run Upgrade wizard. And use Cloudera Manager upgrade guide. Cause some versions of CM and CDH needs specific upgrade procedure. 
5. Give the `tsquery` statement used to chart Hue's CPU utilization?
 - I think no. Cause Hue is Web interface for hadoop components.
6. Name all the roles that make up the Hive service
  - HiveServer2
  - Hive Metastore server
  - Hive gateway
  - Hive WegHCat Server
7. What steps must be completed before integrating Cloudera Manager with Kerberos?
 - Knowledge how to install and setup Kerberos server
 - Working Kerberos and KDC servers
 - Installed Kerberos clients