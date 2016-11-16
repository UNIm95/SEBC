### HDFS Lab: Test HDFS Snapshots

1. Create and fill directories.

        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -mkdir precious                                                                                                               
        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -put SEBC-master.zip precious/SEBC-master.zip
 
2. From admin user:

        [centos@ip-10-0-0-253 ~]$ sudo -u hdfs hdfs dfsadmin -allowSnapshot /user/unim95/precious
        Allowing snaphot on /user/unim95/precious succeeded


3. Create snapshot:
 
        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -createSnapshot precious sebc-hdfs-test
        Created snapshot /user/unim95/precious/.snapshot/sebc-hdfs-test


4.  Remove directory

        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -rm -r precious                                                                                                                                            
        rm: Failed to move to trash: hdfs://ip-10-0-0-253.ec2.internal:8020/user/unim95/precious: The directory /user/unim95/precious cannot be deleted since /user/unim95/precious is snapshottable and already has snapshots

5. Remove file SEBC-master.zip

        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -rm -r precious/SEBC-master.zip
        16/11/16 15:41:51 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-10-0-0-253.ec2.internal:8020/user/unim95/precious/SEBC-master.zip' to trash at: hdfs://ip-10-0-0-253.ec2.internal:8020/user/unim95/.Trash/Current/user/unim95/precious/SEBC-master.zip

6. Restore file from snapshot 

        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -cp -ptopax precious/.snapshot/sebc-hdfs-test/SEBC-master.zip precious                                                                                        
        [unim95@ip-10-0-0-253 ~]$ hdfs dfs -ls precious
        Found 1 items
        -rw-r--r--   3 unim95 unim95     410158 2016-11-16 15:32 precious/SEBC-master.zip