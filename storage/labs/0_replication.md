### HDFS Lab: Replicate to another cluster

I have found someone who gived access to his cluster.
I can create files on remote cluster with `sudo -u hdfs hdfs <remote-namenode> dfs -mkdir /tmp/tes`
But distcp hangs on 43% of map process:

        sudo -u hdfs hadoop distcp -Dmapreduce.job.maps=1 hdfs://ec2-52-3-88-79.compute-1.amazonaws.com:8022/user/unim95/test  hdfs://ec2-35-156-56-163.eu-central-1.compute.amazonaws.com:8022/tmp 
        16/11/16 12:40:42 INFO mapreduce.Job:  map 100% reduce 0%

In logs there is no error messages.
It is problems with networking between different AWS accounts.
If it was a same account within same aviability zone and in near subnets in would work without problems.