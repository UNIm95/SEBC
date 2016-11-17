#!/bin/sh
# Confirm the path values given below correspond to your installation

HADOOP_MR=/opt/cloudera/parcels/CDH/jars
HADOOP_PATH=/opt/cloudera/parcels/CDH/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in  1 2 3
do
   # Reducer containers
   for j in 1 2 3
   do
      # Container memory
      for k in 512 1024 2048
      do
         # Set mapper JVM heap 
         MAP_MB=`echo "($k*0.8)/1" | bc`

         # Set reducer JVM heap 
         RED_MB=`echo "($k*0.8)/1" | bc`
	
	echo -----------------------------------------------------
	echo Number of Mapper containers  $i
	echo Number of Reducer containers $j
	echo Container memory             $k
	echo Mapper JVM heap              $MAP_MB
	echo Reducer JVM heap             $RED_MB
        time sudo -u hdfs $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     100000 /results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err

        time sudo -u hdfs $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar terasort \
                    -Dmapreduce.job.maps=$i \
                    -Dmapreduce.job.reduces=$j \
                    -Dmapreduce.map.memory.mb=$k \
                    -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                    -Dmapreduce.reduce.memory.mb=$k \
                    -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
                     /results/tg-10GB-${i}-${j}-${k}  \
                     /results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err

        sudo -u hdfs $HADOOP_PATH/hadoop fs -rm -r -skipTrash /results/tg-10GB-${i}-${j}-${k}
        sudo -u hdfs $HADOOP_PATH/hadoop fs -rm -r -skipTrash /results/ts-10GB-${i}-${j}-${k}
	echo -----------------------------------------------------
      done
   done
done

echo Testing loop ended on `date`
