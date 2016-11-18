### Kerberos test user

Test from master node.

    [root@ip-10-0-0-253 ~]# kinit cloudera-scm 
    Password for cloudera-scm@UNIM95.COM: 
    [root@ip-10-0-0-253 ~]# klist
    Ticket cache: KEYRING:persistent:0:0
    Default principal: cloudera-scm@UNIM95.COM

    Valid starting       Expires              Service principal
    17.11.2016 16:47:40  18.11.2016 16:47:40  krbtgt/UNIM95.COM@UNIM95.COM
            renew until 24.11.2016 16:47:40


Test from one of datanodes

    [centos@ip-10-0-0-254 ~]$ kinit cloudera-scm
    Password for cloudera-scm@UNIM95.COM: 
    [centos@ip-10-0-0-254 ~]$ klist 
    Ticket cache: KEYRING:persistent:1000:1000
    Default principal: cloudera-scm@UNIM95.COM

    Valid starting       Expires              Service principal
    17.11.2016 16:48:38  18.11.2016 16:48:38  krbtgt/UNIM95.COM@UNIM95.COM
        renew until 24.11.2016 16:48:38
