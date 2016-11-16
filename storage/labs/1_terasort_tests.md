b: Test HDFS performance

 1. Create user directory in HDFS and account unim95
 
        [centos@ip-10-0-0-253 ~]$ sudo -u hdfs hdfs dfs -mkdir /user/unim95                                                                                                                              
        [centos@ip-10-0-0-253 ~]$ sudo -u hdfs hdfs dfs -chown -R unim95:unim95 /user/unim95 
        [centos@ip-10-0-0-253 ~]$ sudo adduser unim95
        [centos@ip-10-0-0-253 ~]$ sudo passwd unim95
        [centos@ip-10-0-0-253 ~]$ su - unim95
        [unim95@ip-10-0-0-253 ~]$ #Check steps
        [unim95@ip-10-0-0-253 ~]$ touch testfile
        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -put testfile
        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -ls                                                                                                                                                           
        Found 1 items
        -rw-r--r--   3 unim95 unim95          0 2016-11-16 09:24 testfile

 2.  10GB `teragen` file with time information:

        [unim95@ip-10-0-0-253 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=1 -Ddfs.blocksize=32M 100000000 10GBTest 
        <output skipped>
                org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=214760662691937609
        File Input Format Counters 
                Bytes Read=0
        File Output Format Counters 
                Bytes Written=10000000000

        real    12m26.999s
        user    0m8.532s
        sys     0m0.393s

 3. Use `terasort` to sort 10GB file

        [unim95@ip-10-0-0-253 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort 10GBTest 10GBSortTestOutput
        <output skipped>
        16/11/16 10:20:35 INFO terasort.TeraSort: done

        real    6m24.039s
        user    0m10.366s
        sys     0m0.376s

