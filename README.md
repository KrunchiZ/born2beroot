# Born2beRoot
In this project, I was required to setup a VM using Oracle VirtualBox.
I have learnt about the file system in a Linux OS, how to manually create partitions and encrypted logical volumes,
as well as setting up SecureShell(SSH) and Uncomplicated Firewall(UFW) using port forwarding.
I made a bash script that display system info every 10 minutes and a localhost Wordpress.
Shoutout to Chlimous and FurizAlex for the guides.

## Table Content

1. [Disclaimer](#disclaimer)
2. [Hypervisor](#hypervisor)
3. [OS](#operating-system)
4. [Tools](#some-of-the-tools-i-used-in-this-project)
5. [Extra Services](#extra-services)
6. [Resources](#resources)

### Disclaimer

My advice for whoever that's trying to do this project following the guides, please do yourselves a favor by reading the manual/doc of the tools used.
Try to understand the process instead of following blindly. I chose to do manual partitioning and wrote my own monitoring.sh and they are worth it.

**RTFM**.
There are different ways to achieve the result required by the subject and you might prefer one over the other. Don't forget to ask your peers!

### Hypervisor

- *Oracle VirtualBox*

### Operating System

- *Linux Debian 6.1.140-1*

[`back to top`](#born2beroot)

### Some of the Tools I used in this project

| **Commands / Tools**       | **What for**                    |
| :------------------------- | ------------------------------- |
| *uname*                    | OS Architecture & Kernel info   |
| *lscpu*                    | Physical CPU count              |
| *nproc*                    | Virtual CPU count               |
| *free*                     | RAM usage                       |
| *df*                       | Disk usage                      |
| *mpstat (from sysstat)*    | CPU usage                       |
| *who*                      | Last boot time                  |
| *lslbk*                    | Encrypted Logical Volume        |
| *ss*                       | TCP connections                 |
| *users*                    | Active users                    |
| *ip*                       | IP and MAC address              |
| *su*                       | Exec command as another user    |
| *sudo*                     | Exec command with root power    |
| *sudo seq*                 | Sudo command count              |
| *echo / printf*            | Write to terminal               |
| *wall*                     | Write to all opened terminal    |
| *grep*                     | Find lines that contain keyword |
| *awk*                      | Process a line                  |
| *bc*                       | Perform arithmetic on string    |
| *systemctl*                | Check system info               |
| *ssh*                      | SecureShell (SSH)               |
| *ufw*                      | Uncomplicated Firewall          |
| *hostnamectl*              | Manage hostname                 |
| *adduser / addgroup*       | Add new user / group            |
| *deluser / delgroup*       | Delete new user / group         |
| *lighttpd / mariadb / php* | Wordpress                       |
| *cron / crontab*           | Set timer to commands / script  |

[`back to top`](#born2beroot)

### Extra Services

- *NetData*

### Resources

- [Subject PDF](en.subject.pdf "en.subject.pdf")
- [System Info Display Script](monitoring.sh "monitoring.sh")
- [Chlimous's guide](https://github.com/chlimous/42-born2beroot_guide)
- [FurizAlex's guide](https://github.com/FurizAlex/B2BR-Guide)

[`back to top`](#born2beroot)
