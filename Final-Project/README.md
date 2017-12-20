# IT620-Final-Project

**Servers Documentation**
• This documentation includes information about 3 servers hosted in GCP (Google Cloud Platform).
***Common Configurations in all servers:
Distributor ID: Ubuntu
Description:    Ubuntu 16.04.3 LTS
Release:        16.04
Codename:       xenial

Nagios nrpe-server v 2.15 – running over xinetd
NRPE Plugins Used:
• check_docker_stats
• check_linux_stats
------------------------------------------------------------
WebServer and Docker Container Host
--------------------------------------------------------
***Hardware Specifications***

Filesystem      Size  Used Avail Use% Mounted on
udev            3.7G     0  3.7G   0% /dev
tmpfs           748M   17M  732M   3% /run
/dev/sda1       9.7G  9.3G  333M  97% /
tmpfs           3.7G     0  3.7G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           3.7G     0  3.7G   0% /sys/fs/cgroup
tmpfs           748M     0  748M   0% /run/user/1001

RAM: 8Gb RAM 

CPU: 2 Cores



***Software Specifications***
Docker version 17.09.1-ce, build 19e2cf6

Container runs:

• CentOS 6.6  Apache and Wordpress Site (configuration attached (Dockerfile image)

***Network Configuration***
Public IP: 35.188.134.222  - Hosting Wordpress Site
docker0   Link encap:Ethernet  HWaddr 02:42:0a:bd:2a:ab  
          inet addr:172.17.0.1  Bcast:0.0.0.0  Mask:255.255.0.0
          inet6 addr: fe80::42:aff:febd:2aab/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:27987 errors:0 dropped:0 overruns:0 frame:0
          TX packets:25683 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:45008461 (45.0 MB)  TX bytes:2619969 (2.6 MB)

ens4      Link encap:Ethernet  HWaddr 42:01:0a:80:00:03  
          inet addr:10.128.0.3  Bcast:10.128.0.3  Mask:255.255.255.255
          inet6 addr: fe80::4001:aff:fe80:3/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1460  Metric:1
          RX packets:346526 errors:0 dropped:0 overruns:0 frame:1
          TX packets:314118 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:114913525 (114.9 MB)  TX bytes:101298080 (101.2 MB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:43915 errors:0 dropped:0 overruns:0 frame:0
          TX packets:43915 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:4618650 (4.6 MB)  TX bytes:4618650 (4.6 MB)

veth7d180fd Link encap:Ethernet  HWaddr 36:7e:23:1a:5e:79  
          inet6 addr: fe80::347e:23ff:fe1a:5e79/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:21332 errors:0 dropped:0 overruns:0 frame:0
          TX packets:19223 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:42075380 (42.0 MB)  TX bytes:1656849 (1.6 MB)


------------------------------------------------------------
MySQL Database Server 
--------------------------------------------------------
***Hardware Specifications***
Filesystem      Size  Used Avail Use% Mounted on
udev            1.8G     0  1.8G   0% /dev
tmpfs           370M  5.2M  365M   2% /run
/dev/sda1       9.7G  1.9G  7.8G  20% /
tmpfs           1.9G     0  1.9G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           1.9G     0  1.9G   0% /sys/fs/cgroup
tmpfs           370M     0  370M   0% /run/user/1001

RAM: 3.6Gb
CPU: 2 Cores

***Software Specifications*** 
MYSQL Server 5.7 

***Network Configuration***
ens4      Link encap:Ethernet  HWaddr 42:01:0a:8e:00:02  
          inet addr:10.142.0.2  Bcast:10.142.0.2  Mask:255.255.255.255
          inet6 addr: fe80::4001:aff:fe8e:2/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1460  Metric:1
          RX packets:132028 errors:0 dropped:0 overruns:0 frame:0
          TX packets:116896 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:33381782 (33.3 MB)  TX bytes:24891600 (24.8 MB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:30 errors:0 dropped:0 overruns:0 frame:0
          TX packets:30 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:1992 (1.9 KB)  TX bytes:1992 (1.9 KB)

***Other***

Database Backup occurs every single day at 12 midnight. Rotating backups every 7 days. Script backup location: /etc/cron.daily. Backups directory /var/backups/mysql 


------------------------------------------------------------
Nagios Monitoring Server
--------------------------------------------------------
***Hardware Specifications***
Filesystem      Size  Used Avail Use% Mounted on
udev            1.8G     0  1.8G   0% /dev
tmpfs           370M   38M  333M  11% /run
/dev/sda1       9.7G  2.0G  7.7G  21% /
tmpfs           1.9G     0  1.9G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           1.9G     0  1.9G   0% /sys/fs/cgroup
tmpfs           370M     0  370M   0% /run/user/1001

RAM: 3.6Gb
CPU: 2 Cores

***Software Specifications*** 
Nagio Core v 4.3.2
Apache 2 

***Network Configuration***
Public IP; 35.192.152.22

ens4      Link encap:Ethernet  HWaddr 42:01:0a:80:00:0a  
          inet addr:10.128.0.10  Bcast:10.128.0.10  Mask:255.255.255.255
          inet6 addr: fe80::4001:aff:fe80:a/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1460  Metric:1
          RX packets:414759 errors:0 dropped:0 overruns:0 frame:2
          TX packets:702488 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:161487940 (161.4 MB)  TX bytes:99314951 (99.3 MB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:64 errors:0 dropped:0 overruns:0 frame:0
          TX packets:64 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:6336 (6.3 KB)  TX bytes:6336 (6.3 KB)



