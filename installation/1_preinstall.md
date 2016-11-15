### Pre-install check list

MariaDB is installen on Master node and replica on Slave00.

All I checked now is applied to all master and slaves host.

 

 1. `vm.swappines` was changed from 30 to 1 on all hosts in `/etc/sysconfig.conf`
 2.  Look in 3
 3. I got all information with: `df -h |grep da1 && cat /etc/mtab |grep da1` On master:/dev/xvda1       40G  1,4G   39G   4% /   /dev/xvda1 / xfs rw,relatime,attr2,inode64,noquota 0 0 On Slaves(small difference only in disk usage) /dev/xvda1       40G  880M   40G   3% / /dev/xvda1 / xfs rw,seclabel,relatime,attr2,inode64,noquota 0 0
 
 4. DISABLE DAMN SELINUX CAUSE THIS IS [CENSORED]
     Create in '/etc/systemd/system' file 'disable_transparent_huge_pages.service' with text:

        [Unit]
        Description = Disable transparent huge pages

        [Service]
        Type = oneshot
        User = root

        ExecStart = /bin/sh -c "/bin/echo never | /usr/bin/tee /sys/kernel/mm/transparent_hugepage/enabled"
        ExecStart = /bin/sh -c "/bin/echo never | /usr/bin/tee /sys/kernel/mm/transparent_hugepage/defrag"

        [Install]
        WantedBy = multi-user.target
    
 5. Network interface attributes with ethtools. But with AWS we don't really know what speed we have.
 
        [centos@ip-10-0-0-253 ~]$ sudo ethtool eth0
        Settings for eth0:
            Link detected: yes

 6. `nslookup` from `bind-utils` see hosts in my vpc.
 
        [centos@ip-10-0-0-253 ~]$ nslookup ip-10-0-0-252.ec2.internal
        Server:         10.0.0.2
        Address:        10.0.0.2#53

        Non-authoritative answer:
        Name:   ip-10-0-0-252.ec2.internal
        Address: 10.0.0.252

        
 7.  Service `nscd` installed and enabled
  
        sudo yum install nscd && sudo systemctl enable nscd
 8. Service `ntpd` installed and enabled
 
        sudo yum install ntp && sudo systemctl enable ntpd
 9.  All systems reboted.

Started with Cloudera Manager installation.
