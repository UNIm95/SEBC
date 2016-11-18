[bavaria@ip-10-0-0-188 centos]$ time yarn jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Ddfs.block.size=16M 51200000 tgen512m

real	1m13.223s
user	0m4.861s
sys	0m0.282s


[bavaria@ip-10-0-0-188 centos]$ hdfs dfs -ls /user/bavaria/tgen512m
Found 3 items
-rw-r--r--   3 bavaria social          0 2016-11-18 10:59 /user/bavaria/tgen512m/_SUCCESS
-rw-r--r--   3 bavaria social 2560000000 2016-11-18 10:59 /user/bavaria/tgen512m/part-m-00000
-rw-r--r--   3 bavaria social 2560000000 2016-11-18 10:59 /user/bavaria/tgen512m/part-m-00001

[bavaria@ip-10-0-0-188 centos]$ hdfs fsck /user/bavaria/tgen512m -files -blocks
Connecting to namenode via http://ip-10-0-0-184.ec2.internal:50070
FSCK started by bavaria (auth:SIMPLE) from /10.0.0.188 for path /user/bavaria/tgen512m at Fri Nov 18 11:01:47 UTC 2016
/user/bavaria/tgen512m <dir>
/user/bavaria/tgen512m/_SUCCESS 0 bytes, 0 block(s):  OK

/user/bavaria/tgen512m/part-m-00000 2560000000 bytes, 153 block(s):  OK
0. BP-740069477-10.0.0.184-1479465161989:blk_1073742559_1735 len=16777216 Live_repl=3

152. BP-740069477-10.0.0.184-1479465161989:blk_1073742860_2036 len=9863168 Live_repl=3

/user/bavaria/tgen512m/part-m-00001 2560000000 bytes, 153 block(s):  OK
0. BP-740069477-10.0.0.184-1479465161989:blk_1073742556_1732 len=16777216 Live_repl=3

152. BP-740069477-10.0.0.184-1479465161989:blk_1073742863_2039 len=9863168 Live_repl=3

Status: HEALTHY
 Total size:	5120000000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	306 (avg. block size 16732026 B)
 Minimally replicated blocks:	306 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Fri Nov 18 11:01:47 UTC 2016 in 15 milliseconds


The filesystem under path '/user/bavaria/tgen512m' is HEALTHY
