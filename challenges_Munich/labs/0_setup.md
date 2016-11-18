Region: us-east-1a
AMI ID: CentOS Linux 6 x86_64 HVM EBS 1602-74e73035-3435-48d6-88e0-89cc02ad83ee-ami-21e6d54b.3 (ami-1c221e76)
OS    : CentOS6

[centos@ip-10-0-0-184 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       40G  673M   37G   2% /
tmpfs            15G     0   15G   0% /dev/shm

[centos@ip-10-0-0-185 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       40G  673M   37G   2% /
tmpfs            15G     0   15G   0% /dev/shm

[centos@ip-10-0-0-186 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       40G  673M   37G   2% /
tmpfs            15G     0   15G   0% /dev/shm

[centos@ip-10-0-0-187 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       40G  673M   37G   2% /
tmpfs            15G     0   15G   0% /dev/shm

[centos@ip-10-0-0-188 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       40G  673M   37G   2% /
tmpfs            15G     0   15G   0% /dev/shm

[centos@ip-10-0-0-184 ~]$ yum repolist enabled
Loaded plugins: fastestmirror, presto
Determining fastest mirrors
 * base: mirror.cs.pitt.edu
 * extras: mirrors.advancedhosters.com
 * updates: mirror.us.leaseweb.net
base                                                                                                                                                                      | 3.7 kB     00:00     
base/primary_db                                                                                                                                                           | 4.7 MB     00:00     
extras                                                                                                                                                                    | 3.4 kB     00:00     
extras/primary_db                                                                                                                                                         |  37 kB     00:00     
updates                                                                                                                                                                   | 3.4 kB     00:00     
updates/primary_db                                                                                                                                                        | 3.1 MB     00:00     
repo id                                                                                 repo name                                                                                          status
base                                                                                    CentOS-6 - Base                                                                                    6 696
extras                                                                                  CentOS-6 - Extras                                                                                     62
updates                                                                                 CentOS-6 - Updates                                                                                   603
repolist: 7 361
[centos@ip-10-0-0-184 ~]$ 


[centos@ip-10-0-0-184 ~]$ cat /etc/passwd |grep bav
bavaria:x:2700:2700::/home/bavaria:/bin/bash
[centos@ip-10-0-0-184 ~]$ cat /etc/passwd |grep sax
saxony:x:2800:501::/home/saxony:/bin/bash

[centos@ip-10-0-0-184 ~]$ cat /etc/group |grep bav
social:x:502:bavaria
bavaria:x:2700:

[centos@ip-10-0-0-184 ~]$ cat /etc/group |grep sax
democratic:x:501:saxony

