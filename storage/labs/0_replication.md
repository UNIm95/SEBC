### HDFS Lab: Replicate to another cluster


It worked with little trick:
Ic Cloudera manager turn on option `dfs.client.use.datanode.hostname` on and in `/etc/hosts` public ip's with internal hostnames(remote cluster)

       [centos@ip-10-0-0-253 ~]$ sudo -u hdfs hadoop distcp hftp://ec2-52-3-88-79.compute-1.amazonaws.com:50070/user/unim95/SEBC-master.zip  hdfs://ec2-35-156-56-163.eu-central-1.compute.amazonaws.com
/tmp
       16/11/16 17:12:53 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true,
 numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, so
urceFileListing=null, sourcePaths=[hftp://ec2-52-3-88-79.compute-1.amazonaws.com:50070/user/unim95/SEBC-master.zip], targetPath=hdfs://ec2-35-156-56-163.eu-central-1.compute.amazonaws.com/tmp, 
targetPathExists=true, filtersFile='null'}
       16/11/16 17:12:53 INFO client.RMProxy: Connecting to ResourceManager at ip-10-0-0-253.ec2.internal/10.0.0.253:8032
       16/11/16 17:12:55 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 1; dirCnt = 0
       16/11/16 17:12:55 INFO tools.SimpleCopyListing: Build file listing completed.
       16/11/16 17:12:55 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
       16/11/16 17:12:55 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
       16/11/16 17:12:55 INFO tools.DistCp: Number of paths in the copy list: 1
       16/11/16 17:12:55 INFO tools.DistCp: Number of paths in the copy list: 1
       16/11/16 17:12:55 INFO client.RMProxy: Connecting to ResourceManager at ip-10-0-0-253.ec2.internal/10.0.0.253:8032
       16/11/16 17:12:55 INFO mapreduce.JobSubmitter: number of splits:1
       16/11/16 17:12:55 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479316192928_0001
       16/11/16 17:12:56 INFO impl.YarnClientImpl: Submitted application application_1479316192928_0001
       16/11/16 17:12:56 INFO mapreduce.Job: The url to track the job: http://ip-10-0-0-253.ec2.internal:8088/proxy/application_1479316192928_0001/
       16/11/16 17:12:56 INFO tools.DistCp: DistCp job-id: job_1479316192928_0001
       16/11/16 17:12:56 INFO mapreduce.Job: Running job: job_1479316192928_0001
       16/11/16 17:13:02 INFO mapreduce.Job: Job job_1479316192928_0001 running in uber mode : false
       16/11/16 17:13:02 INFO mapreduce.Job:  map 0% reduce 0%
       16/11/16 17:13:11 INFO mapreduce.Job:  map 100% reduce 0%
       16/11/16 17:13:12 INFO mapreduce.Job: Job job_1479316192928_0001 completed successfully
       16/11/16 17:13:12 INFO mapreduce.Job: Counters: 38
               File System Counters
                       FILE: Number of bytes read=0
                       FILE: Number of bytes written=126871
                       FILE: Number of read operations=0
                       FILE: Number of bytes written=126871
                       FILE: Number of read operations=0
                       FILE: Number of large read operations=0
                       FILE: Number of write operations=0
                       HDFS: Number of bytes read=395
                       HDFS: Number of bytes written=410158       
                       HDFS: Number of read operations=15
                       HDFS: Number of large read operations=0
                       HDFS: Number of write operations=4
                       HFTP: Number of bytes read=0
                       HFTP: Number of bytes written=0
                       HFTP: Number of read operations=0
                       HFTP: Number of large read operations=0
                       HFTP: Number of write operations=0
               Job Counters 
                       Launched map tasks=1
                       Other local map tasks=1
                       Total time spent by all maps in occupied slots (ms)=6853
                       Total time spent by all reduces in occupied slots (ms)=0
                       Total time spent by all map tasks (ms)=6853
                       Total vcore-seconds taken by all map tasks=6853
                       Total megabyte-seconds taken by all map tasks=7017472
               Map-Reduce Framework
                       Map input records=1
                       Map output records=0
                       Input split bytes=115
                       Spilled Records=0
                       Failed Shuffles=0
                       Merged Map outputs=0
                       GC time elapsed (ms)=24
                       CPU time spent (ms)=1910
                       Physical memory (bytes) snapshot=197632000
                       Virtual memory (bytes) snapshot=1594613760
                       Total committed heap usage (bytes)=229638144
               File Input Format Counters 
                       Bytes Read=280
               File Output Format Counters 
                       Bytes Written=0
               org.apache.hadoop.tools.mapred.CopyMapper$Counter
                       BYTESCOPIED=410158
                       BYTESEXPECTED=410158
                       COPY=1
